#' Example titre data
#'
#' \code{titre_dat} from the quick start vignette
#'
#' @format A data frame with the following variables:
#'
#'   \describe{
#'
#'   \item{individual}{Subject index}
#'
#'   \item{sample_epoch}{Sample epoch index}
#'
#'   \item{virus_epoch}{Virus circulation epoch index}
#'
#'   \item{epochs_per_year}{Number of epochs per year}
#'
#'   \item{logtitre}{Log titre}
#'
#'   \item{run}{Measurement index}
#'
#'   \item{birth_epoch}{Epoch of birth index}
#'
#'   \item{group}{Group index}
#'
#'   }
"titre_data_example"

#' Base parameter table
#'
#' @format A data frame with the following variables:
#'
#'   \describe{
#'
#'   \item{name}{Parameter name}
#'
#'   \item{value}{Parameter value}
#'
#'   \item{fixed}{1 - fixed, 0 - needs to be estimated}
#'
#'   \item{steps}{Who knows}
#'
#'   \item{lower_bound}{Lower bound for value}
#'
#'   \item{upper_bound}{Upper bound for value}
#'
#'   \item{lower_start}{No idea}
#'
#'   \item{upper_start}{Haven't a clue}
#'
#'   \item{type}{Don't know}
#'
#'   }
"par_tab_base"

#' Antigenic map
#'
#' @format A data frame with the following variables:
#'
#'   \describe{
#'
#'   \item{strain}{Virus strain}
#'
#'   \item{x}{X-coordinate}
#'
#'   \item{y}{Y-coordinate}
#'
#'   \item{epoch}{The epoch the strain circulated. Since there is 1 epoch per
#'   year, this is the same as year.}
#'
#'   \item{epochs_per_year}{Number of epochs per year.}
#'
#'   }
"fonville_map"
