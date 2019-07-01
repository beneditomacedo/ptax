test_that("checking ptax_maxima with invalid parameters", {
  expect_null(ptax_mensal(2009,1))
  expect_null(ptax_mensal(2010,13))
  expect_null(ptax_mensal(2010,"a"))
  expect_null(ptax_mensal("a",1))
})