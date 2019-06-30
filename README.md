PTAX Package
================

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

-----

Fonte: Banco Central do Brasil disponivel na URL
<https://www.bcb.gov.br/acessoinformacao/legado?url=>
