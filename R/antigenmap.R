#' Predict an antigenic map
#'
#' Fits a linear model to a set of antigenic coordinates in order
#' to predict antigenic coordinates for infection epochs.
#'
#' @param antigenic_map A dataframe of antigenic coordinates, with columns
#'   \code{strain}, \code{x}, \code{y}, \code{epoch} and \code{epochs_per_year}.
#'   See \code{\link{fonville_map}} for an example.
#' @param epochs Epochs to predict for. If \code{NULL}, then will predict for
#'   the observed epochs
#'
#' @return a predicted antigenic map
#'
#' @importFrom stats lm predict
#' @importFrom tibble tibble as_tibble
#' @importFrom dplyr bind_cols
#'
#' @export
antigenmap_predict <- function(antigenic_map, epochs = NULL) {

  # Create prediction data
  if (is.null(epochs))
    epochs <- as.integer(antigenic_map$epoch)
  pred_data <- tibble(epoch = as.integer(epochs))

  # Fit linear model with multiple outcomes
  mlmfit <- lm(cbind(x, y) ~ epoch, antigenic_map)

  # Predict from the fit
  pred_xy <- as_tibble(predict(mlmfit, pred_data))

  pred_xy$epochs_per_year <- unique(antigenic_map$epochs_per_year)
  as_tibble(bind_cols(pred_data, pred_xy))
}
