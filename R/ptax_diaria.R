#' PTAX Diaria
#'
#' Retorna um vetor com os valores de compra e venda da PTAX na data solicitada.
#' Se for um dia nao util, nao existe cotacao PTAX, portanto retorna NULL
#'
#' @param ano YYYY (quatro digitos)
#' @param mes M ou MM (um ou dois digitos)
#' @param dia D ou DD (um ou dois digitos)
#'
#' @return Vetor com a data, o valor de compra e venda da ptax no ultimo dia util do mes
#'
#' @examples
#'
#' ptax_diaria(2010,1,5)
#'
#' ptax_diaria(2010,1,1)
#'
#' @export
#'

ptax_diaria <- function (ano = NULL, mes = NULL, dia = NULL) {
  
  if(is.null(ano) | is.null(mes) | is.null(dia)) stop ("Informe ano, mes e dia -> ptax_diaria (AAAA,MM,DD)")
  
  #
  # ano < 100 to avoid year informed with 2 digits
  #
  if(!is.numeric(ano) | ano < 100) stop ("Informe ano, mes e dia -> ptax_diaria (AAAA,MM,DD)")
  
  if(!is.numeric(mes) | mes > 12) stop ("Informe ano, mes e dia -> ptax_diaria (AAAA,MM,DD)")
  
  if(!is.numeric(dia) | dia > 31) stop ("Informe ano, mes e dia -> ptax_diaria (AAAA,MM,DD)")
  
  
  d <- paste(dia,mes,ano,sep="/")
  
  # TODO "@importFrom lubridate dmy" is not running properly
  #
  d <- lubridate::dmy (d)
  
  t <- subset(ptax::ptax,ptax::ptax$Data_Cotacao == d)
  
  if (nrow(t) != 0) {
    return(t)
  } else {
    return(NULL)
  }
}
