\name{ptax}
\alias{ptax}
\docType{data}
\title{
Disponibiliza a cotacao diaria da PTAX de 2010 a 2018
}
\description{
Esse pacote R prove a cotacao diaria da PTAX do Banco Central do Brasil de 2010 a 2018. Consiste na media das cotacoes de compra e venda de dolar informadas pelos operadores de cambio ao Banco Central do Brasil.
}
\usage{data("ptax")}
\format{
  A data frame with 2258 observations on the following 3 variables.
  \describe{
    \item{\code{Data}}{data da cotacao}
    \item{\code{Compra}}{valor de compra de dolar em reais}
    \item{\code{Venda}}{valor de venda de dolar em reais}
  }
}

\source{
https://www4.bcb.gov.br/pec/taxas/port/ptaxnpesq.asp
}
\references{
https://pt.wikipedia.org/wiki/Ptax
}
\examples{
data(ptax)
str(ptax)
}
\keyword{datasets,cambio,dolar}
