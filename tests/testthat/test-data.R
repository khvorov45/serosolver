# Tests that the included data has the correct format

library(testthat)
library(serosolver)

common_test <- function(dat) {
  expect_true(tibble::is_tibble(dat))
  expect_true(!any(is.na(dat)))
}

test_that("fonville_map is formatted correctly", {
  common_test(fonville_map)
  expect_named(fonville_map, c("strain", "x", "y", "epoch", "epochs_per_year"))
  with(fonville_map, {
    expect_true(is.character(strain))
    expect_true(is.numeric(x))
    expect_true(is.numeric(y))
    expect_true(is.integer(epoch))
    expect_true(is.integer(epochs_per_year))
  })
  expect_equal(length(unique(fonville_map$epochs_per_year)), 1)
})

test_that("par_tab_base is formatted correctly", {
  common_test(par_tab_base)
})

test_that("titre_data_example is formatted correctly", {
  common_test(titre_data_example)
  expect_named(
    titre_data_example,
    c(
      "individual", "sample_epoch", "virus_epoch", "epochs_per_year",
      "logtitre", "run", "birth_epoch", "group"
    )
  )
  with(titre_data_example, {
    expect_true(is.integer(individual))
    expect_true(is.integer(sample_epoch))
    expect_true(is.integer(virus_epoch))
    expect_true(is.integer(epochs_per_year))
    expect_true(is.numeric(logtitre))
    expect_true(is.integer(run))
    expect_true(is.integer(birth_epoch))
    expect_true(is.integer(group))
  })
  expect_equal(length(unique(titre_data_example$epochs_per_year)), 1)
})
