#' Generate antigenic map
#'
#' Fits a smoothing spline through a set of antigenic coordinates, and uses this
#' to predict antigenic coordinates for all potential infection time points
#'
#' @param antigenic_distances a data frame of antigenic coordinates, with
#'   columns labelled X, Y and Strain for x coord, y coord and Strain label
#'   respectively. Strain labels should be in the virus_key vector which is at
#'   the top of this source code. See \code{\link{fonville_map_approx}}
#' @param buckets the number of epochs per year. 1 means that each year has 1
#'   strain; 12 means that each year has 12 strains (monthly resolution)
#' @param spar to be passed to smooth.spline
#'
#' @return a fitted antigenic map
#'
#' @export
generate_antigenic_map <- function(antigenic_distances,
                                   buckets = 1,
                                   spar = 0.3) {
  # virus_key <- c(
  #   "HK68" = 1968, "EN72" = 1972, "VI75" = 1975, "TX77" = 1977, "BK79" = 1979, "SI87" = 1987, "BE89" = 1989, "BJ89" = 1989,
  #   "BE92" = 1992, "WU95" = 1995, "SY97" = 1997, "FU02" = 2002, "CA04" = 2004, "WI05" = 2005, "PE06" = 2009
  # ) * buckets
  # antigenic_distances$Strain <- virus_key[antigenic_distances$Strain]
  # fit <- smooth.spline(antigenic_distances$X, antigenic_distances$Y, spar = spar)
  # x_line <- lm(data = antigenic_distances, X ~ Strain)
  # Strain <- seq(1968 * buckets, 2016 * buckets - 1, by = 1)
  # x_predict <- predict(x_line, data.frame(Strain))
  # y_predict <- predict(fit, x = x_predict)
  # fit_dat <- data.frame(x = y_predict$x, y = y_predict$y)
  # fit_dat$strain <- Strain
  # colnames(fit_dat) <- c("x_coord", "y_coord", "inf_times")
  # return(fit_dat)
}
