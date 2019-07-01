PTAX Package
================

## Instalação

    install.packages("devtools")
    install_github("beneditomacedo/ptax",upgrade = "never")
    library(ptax)

## Uso

Disponibiliza a PTAX Diaria, taxa de cambio de compra e venda entre
dolar e real, entre os anos de 2010 e 2018

``` r
head(ptax)
```

    ##   Data_Cotacao Compra  Venda
    ## 1   2010-07-02 1.7777 1.7785
    ## 2   2010-07-05 1.7747 1.7755
    ## 3   2010-07-06 1.7657 1.7665
    ## 4   2010-07-07 1.7711 1.7719
    ## 5   2010-07-08 1.7644 1.7652
    ## 6   2010-07-09 1.7564 1.7572

Exibe a PTAX Mensal, ie, a cotacao de compra e venda do ultimo dia util
do mes

``` r
ptax_mensal(2010,1)
```

    ##   Data_Cotacao Compra  Venda
    ## 1   2010-01-29  1.874 1.8748

Caso nao existam dados para o ano e mes informados, sera retornado NULL

``` r
ptax_mensal(2009,1)
```

    ## NULL

Exibe a PTAX Diaria, ie, a cotacao de compra e venda do dia

``` r
ptax_diaria(2010,1,4)
```

    ##      Data_Cotacao Compra Venda
    ## 2136   2010-01-04 1.7232 1.724

Caso a cotacao para esse dia nao exista sera retornado NULL. Nesse caso,
se a data nao for um dia util ou se for uma data anterior a 01/Jan/2010
ou posterial a 31/12/2018

``` r
ptax_diaria(2010,1,1)
```

    ## NULL

``` r
ptax_diaria(2009,1,15)
```

    ## NULL

## Licenca

<a href="https://opensource.org/licenses/MIT">MIT</a>

## Fonte

Banco Central do Brasil disponivel na URL
<https://www.bcb.gov.br/acessoinformacao/legado?url=>
