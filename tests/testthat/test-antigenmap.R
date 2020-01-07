# Tests of antigenmap functions function

library(testthat)
library(serosolver)
library(dplyr)

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

test_that("antigenmap_predict works", {
  pred <- antigenmap_predict(fonville_map)
  test_pred(pred)
  pred <- antigenmap_predict(fonville_map, epochs = c(1977, 1983))
  test_pred(pred)
  expect_equal(pred$epoch, c(1977, 1983))
})

test_that("antigenmap_lengthen works", {
  fonv_longer <- antigenmap_lengthen(fonville_map, 3)
  expect_equal(unique(fonv_longer$epochs_per_year), 3)
  first_eps <- fonv_longer %>%
    group_by(strain) %>%
    mutate(first_ep = first(epoch)) %>%
    pull(first_ep) %>%
    unique()
  expect_equal(first_eps, fonville_map$epoch * 3 - 2)
  diffs <- fonv_longer %>%
    group_by(strain) %>%
    mutate(diffs = epoch - lag(epoch, default = first(epoch) - 1)) %>%
    pull(diffs)
  expect_true(all(diffs == 1))
  fonv_same <- antigenmap_lengthen(fonville_map, 1)
  expect_equal(fonv_same, fonville_map)
  expect_error(
    antigenmap_lengthen(fonv_longer, 1),
    paste0(
      "epochs_per_year \\(1\\) must be greater than the map's ",
      "epochs_per_year \\(3\\)"
    )
  )
})
