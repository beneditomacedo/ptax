context("ptax_diaria")

test_that("checking ptax_diaria with invalid parameters", {
  expect_null(ptax_diaria(2009,1,1))
  expect_null(ptax_diaria(2010,1,1))
  expect_error(ptax_diaria(2010,13),"Informe ano, mes e dia")
  expect_error(ptax_diaria(2010,1,"a"),"Informe ano, mes e dia")
  expect_error(ptax_diaria("a",1,4),"Informe ano, mes e dia") 
  expect_error(ptax_diaria(2010),"Informe ano, mes e dia")
  expect_error(ptax_diaria(2010,1),"Informe ano, mes e dia")
})

test_that("checking ptax_diaria with valid parameters", {
  expect_equal(as.numeric(ptax_diaria(2010,1,4)[2]),1.7232)
  expect_equal(as.numeric(ptax_diaria(2010,1,4)[3]),1.724)
})