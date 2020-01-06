# par_tab_base

par_tab_base <- read.csv("data-raw/par_tab_base.csv", stringsAsFactors = FALSE)

par_tab_base <- tibble::as_tibble(par_tab_base)

usethis::use_data(par_tab_base, overwrite = TRUE)
