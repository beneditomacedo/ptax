test_that("checking ptax_mensal with invalid parameters", {
  expect_null(ptax_mensal(2009,1))
  expect_null(ptax_mensal(2010,13))
  expect_null(ptax_mensal(2010,"a"))
  expect_null(ptax_mensal("a",1))
})

test_that("checking ptax_mensal with valid parameters", {
  expect_equal(as.numeric(ptax_mensal(2010,1)[2]),1.874)
  expect_equal(as.numeric(ptax_mensal(2010,1)[3]),1.8748)
})