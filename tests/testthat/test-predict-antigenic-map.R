# Tests of predict_antigenic_map function

library(testthat)
library(serosolver)

test_pred <- function(pred) {
  expect_true(tibble::is_tibble(pred))
  expect_true(!any(is.na(pred)))
  expect_named(pred, c("epoch", "x", "y"))
}

test_that("predict_antigenic_map works", {
  pred <- predict_antigenic_map(fonville_map)
  test_pred(pred)
  pred <- predict_antigenic_map(fonville_map, epochs = c(1977, 1983))
  test_pred(pred)
  expect_equal(pred$epoch, c(1977, 1983))
})
