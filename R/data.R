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
#'   \item{sample}{Sample time index}
#'
#'   \item{virus}{Virus circulation time index}
#'
#'   \item{titre}{Log titre}
#'
#'   \item{run}{Measurement index}
#'
#'   \item{dob}{Date of birth time index}
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
#'   \item{year}{The year the strain circulated}
#'
#'   }
"fonville_map"
