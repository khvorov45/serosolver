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

#' Lengthen antigenic map
#'
#' Takes an antigenic map with a certain number of epochs per year and lengthen
#' it so that there are more epochs per year
#'
#' @param antigenmap A dataframe of antigenic coordinates, with columns
#'   \code{strain}, \code{x}, \code{y}, \code{epoch} and \code{epochs_per_year}.
#' @param new_epochs_per_year New epochs per year. Must be greater than
#'   \code{epochs_per_year} in \code{antigenmap}
#'
#' @importFrom dplyr group_by slice mutate ungroup select n row_number .data
#' @importFrom magrittr "%>%"
#' @importFrom rlang abort
#' @importFrom glue glue
#'
#' @return The same map but longer
#' @export
antigenmap_lengthen <- function(antigenmap, new_epochs_per_year) {
  cur_ep <- unique(antigenmap$epochs_per_year)
  if (new_epochs_per_year < cur_ep)
    abort(glue(
        "epochs_per_year ({new_epochs_per_year}) must be greater than ",
        "the map's epochs_per_year ({cur_ep})"
    ))
  if (new_epochs_per_year == cur_ep)
    return(antigenmap)
  coef <- new_epochs_per_year / cur_ep
  antigenmap %>%
    mutate(strain_ind = row_number()) %>%
    slice(rep(1:n(), each = coef)) %>%
    group_by(.data$strain_ind) %>%
    mutate(
      epoch = .data$epoch * coef - (coef - row_number()),
      epochs_per_year = new_epochs_per_year
    ) %>%
    ungroup() %>%
    select(-"strain_ind")
}
