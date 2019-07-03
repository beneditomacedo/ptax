test_that("checking ptax_mensal with invalid parameters", {
  expect_null(ptax_mensal(2009,1))
  expect_error(ptax_mensal(2010,13),"Informe ano e mes")
  expect_error(ptax_mensal(2010,"a"),"Informe ano e mes")
  expect_error(ptax_mensal("a",1),"Informe ano e mes")
  expect_error(ptax_mensal(),"Informe ano e mes")
  expect_error(ptax_mensal(2010),"Informe ano e mes")
  expect_error(ptax_mensal(2010,),"Informe ano e mes")
  expect_error(ptax_mensal(NULL,NULL),"Informe ano e mes")
})

test_that("checking ptax_mensal with valid parameters", {
  expect_equal(as.numeric(ptax_mensal(2010,1)[2]),1.874)
  expect_equal(as.numeric(ptax_mensal(2010,1)[3]),1.8748)
})