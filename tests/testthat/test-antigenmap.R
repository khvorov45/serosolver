# Tests of antigenmap functions function

library(testthat)
library(serosolver)

test_pred <- function(pred) {
  expect_true(tibble::is_tibble(pred))
  expect_true(!any(is.na(pred)))
  expect_named(pred, c("epoch", "x", "y", "epochs_per_year"))
  with(pred, {
    expect_true(is.integer(epoch))
    expect_true(is.numeric(x))
    expect_true(is.numeric(y))
    expect_true(is.integer(epochs_per_year))
  })
  expect_equal(length(unique(pred$epochs_per_year)), 1)
}

test_that("predict_antigenic_map works", {
  pred <- antigenmap_predict(fonville_map)
  test_pred(pred)
  pred <- antigenmap_predict(fonville_map, epochs = c(1977, 1983))
  test_pred(pred)
  expect_equal(pred$epoch, c(1977, 1983))
})
