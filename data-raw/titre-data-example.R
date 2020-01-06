# titre_dat from the quickstart vignette

titre_data_example <- data.frame(
  individual = c(rep(1, 4), rep(2, 4)),
  sample = c(8039, 8040, 8044, 8047, 8039, 8041, 8045, 8048),
  virus = c(rep(8036, 8)),
  titre = c(0, 0, 7, 7, 0, 5, 6, 5),
  run = c(rep(1, 8)),
  dob = c(rep(8036, 8)),
  group = c(rep(1, 8))
)

usethis::use_data(titre_data_example, overwrite = TRUE)
