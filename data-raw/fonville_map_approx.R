# par_tab_base

fonville_map_approx <- read.csv(
  "data-raw/fonville_map_approx.csv", stringsAsFactors = FALSE
)

usethis::use_data(fonville_map_approx, overwrite = TRUE)
