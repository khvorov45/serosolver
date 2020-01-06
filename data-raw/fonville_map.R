# An antigenic map

fonville_map <- read.csv(
  "data-raw/fonville_map.csv", stringsAsFactors = FALSE
)

strain_years <- c(
  "HK68" = 1968, "EN72" = 1972, "VI75" = 1975, "TX77" = 1977,
  "BK79" = 1979, "SI87" = 1987, "BE89" = 1989, "BJ89" = 1989,
  "BE92" = 1992, "WU95" = 1995, "SY97" = 1997, "FU02" = 2002,
  "CA04" = 2004, "WI05" = 2005, "PE06" = 2009
)

strain_years <- data.frame(
  strain = names(strain_years), year = strain_years, stringsAsFactors = FALSE
)
rownames(strain_years) <- NULL

fonville_map <- dplyr::left_join(fonville_map, strain_years, by = "strain")

usethis::use_data(fonville_map, overwrite = TRUE)
