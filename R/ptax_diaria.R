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

ptax_diaria <- function (ano, mes, dia) {
  
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
