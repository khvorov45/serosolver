# titre_dat from the quickstart vignette

titre_data_example <- tibble::tibble(
  individual = c(rep(1L, 4), rep(2L, 4)),
  sample_epoch = c(8039L, 8040L, 8044L, 8047L, 8039L, 8041L, 8045L, 8048L),
  virus_epoch = c(rep(8036L, 8)),
  epochs_per_year = 4L,
  logtitre = c(0, 0, 7, 7, 0, 5, 6, 5),
  run = c(rep(1L, 8)),
  birth_epoch = c(rep(8036L, 8)),
  group = c(rep(1L, 8))
)

usethis::use_data(titre_data_example, overwrite = TRUE)
