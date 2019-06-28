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
#' @importFrom dplyr filter arrange desc row_number count %>%
#'
#' @importFrom lubridate year month
#'
#' @export
#'

ptax_mensal <- function (ano, mes) {

  v <- ptax::ptax %>%
    filter(year(.data$Data) == ano & month(.data$Data) == mes) %>%
    arrange (desc(.data$Data)) %>% filter(row_number() == 1)

  if (count(v) == 1) {
    return (v)
  } else {
    return (NULL)
  }
}
