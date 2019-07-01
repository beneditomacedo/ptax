test_that("checking if PTAX table was loaded properly", {
  expect_equal(nrow(ptax),2258)
  expect_equal(ncol(ptax),3)
})