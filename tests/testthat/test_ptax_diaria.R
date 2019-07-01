test_that("checking ptax_diaria with invalid parameters", {
  expect_null(ptax_diaria(2009,1,1))
  expect_null(ptax_diaria(2010,1,1))
  expect_null(ptax_diaria(2010,1,"a"))
  expect_null(ptax_diaria("a",1,4)) 
  expect_null(ptax_diaria(2010))
  expect_null(ptax_diaria(2010,1))
})

test_that("checking ptax_diaria with valid parameters", {
  expect_equal(as.numeric(ptax_diaria(2010,1,4)[2]),1.7232)
  expect_equal(as.numeric(ptax_diaria(2010,1,4)[3]),1.724)
})