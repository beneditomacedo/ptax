## code to prepare `DATASET` dataset goes here

# Ir para o diretorio onde esta o arquivo ptax_raw
setwd("data-raw/")

# Leitura do arquivo ptax_raw
ptax_raw <- read.csv2("ptax_raw.csv")

# Remocao de colunas nao uteis
ptax<-ptax_raw[,c(1,5,6)]

# Nomear as colunas
names(ptax) <- c("Data","Compra","Venda")

# Converter a primeira coluna para o tipo Date
ptax$Data <- dmy(ptax$Data)

# Add to package
usethis::use_data(ptax,overwrite = TRUE)

