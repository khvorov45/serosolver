#' Smooth antigenic map
#'
#' Fits a smoothing spline through a set of antigenic coordinates, and uses this
#' to predict antigenic coordinates for all potential infection time points
#'
#' @param antigenic_map A dataframe of antigenic coordinates, with columns
#'   \code{strain}, \code{x}, \code{y} and \code{year}. See
#'   \code{\link{fonville_map}} for an example.
#' @param epochs_per_year the number of epochs per year. 1 means that each year
#'   has 1 strain; 12 means that each year has 12 strains (monthly resolution).
#' @param spar to be passed to \code{\link[stats]{smooth.spline}}
#'
#' @return a fitted antigenic map
#'
#' @importFrom stats smooth.spline
#'
#' @export
smooth_antigenic_map <- function(antigenic_map,
                                 epochs_per_year = 1,
                                 spar = 0.3) {
  # antigenic_map$epoch <- antigenic_map$year * epochs_per_year
  # fit <- smooth.spline(antigenic_map$x, antigenic_map$y, spar = spar)
  # x_line <- lm(x ~ epoch, data = antigenic_map)
  # epochs_pred <- seq(min(antigenic_map$epoch), max(antigenic_map$epoch), by = 1)
  # Strain <- seq(1968 * buckets, 2016 * buckets - 1, by = 1)
  # x_predict <- predict(x_line, data.frame(Strain))
  # y_predict <- predict(fit, x = x_predict)
  # fit_dat <- data.frame(x = y_predict$x, y = y_predict$y)
  # fit_dat$strain <- Strain
  # colnames(fit_dat) <- c("x_coord", "y_coord", "inf_times")
  # return(fit_dat)
}
