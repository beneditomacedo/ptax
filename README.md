# PTAX Package

PTAX - R package - contem tabela da PTAX Diaria com a taxa de cambio entre dolar e real



Installation
------------
Use os seguintes comandos para instalar a ultima versao do github:

``` r
library(devtools)
devtools::install_github("beneditomacedo/ptax", upgrade = "never")
library(ptax)
```

Uso
---

Lista os valores iniciais da PTAX

``` r
head(ptax)

```

Lista os valores de compra e venda da PTAX do ultimo dia util do mes e ano informados

``` r
ptax_mensal(2010,1)
```

Retorna null caso nao exista nenhum valor para esse mes e ano informados

``` r
ptax_mensal(2009,1)
```
