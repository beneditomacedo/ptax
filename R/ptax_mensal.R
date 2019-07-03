#' PTAX Mensal
#'
#' Retorna um vetor com os valores de compra e venda da PTAX no ultimo dia util do mes,
#' definida como a ptax_mensal
#'
#' @param ano YYYY (quatro digitos)
#' @param mes M ou MM (um ou dois digitos)
#'
#' @return Vetor com a data, o valor de compra e venda da ptax no ultimo dia util do mes
#'
#' @importFrom lubridate year month
#'
#' @importFrom utils tail
#'
#' @examples
#'
#' ptax_mensal(2010,1)
#'
#' ptax_mensal(2010,13)
#'
#' @export
#'

ptax_mensal <- function (ano = NULL, mes = NULL) {
  
  if(is.null(ano) | is.null(mes)) stop ("Informe ano e mes -> ptax_mensal (AAAA,MM)")
  
  #
  # ano < 100 to avoid year informed with 2 digits
  #
  if(!is.numeric(ano) | ano < 100) stop ("Informe ano e mes -> ptax_mensal (AAAA,MM)")
  
  if(!is.numeric(mes) | mes > 12) stop ("Informe ano e mes -> ptax_mensal (AAAA,MM)")

  t <- subset(ptax::ptax, year(Data_Cotacao) == ano & month(Data_Cotacao) == mes)

  if (nrow(t) != 0) {

    # TODO ordenar a ptax na criacao
    #
    t <- t[order(t$Data),]
    t <- tail(t,1)
    row.names(t) <- NULL
    return(t)
  } else {
    return(NULL)
  }
}
