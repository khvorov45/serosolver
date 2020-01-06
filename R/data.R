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
#'   \item{samples}{Sample time index}
#'
#'   \item{virus}{Virus circulation time index}
#'
#'   \item{titre}{Log titre}
#'
#'   \item{run}{Measurement index}
#'
#'   \item{DOB}{Date of birth time index}
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
#'   \item{names}{Parameter name}
#'
#'   \item{values}{Parameter value}
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
#'   \item{Strain}{Virus strain}
#'
#'   \item{X}{X-coordinate}
#'
#'   \item{Y}{Y-coordinate}
#'
#'   }
"fonville_map_approx"

#' Strain years
#'
#' @format A data frame with the following variables:
#'
#'   \describe{
#'
#'   \item{strain}{Virus strain}
#'
#'   \item{year}{The year it circulated}
#'
#'   }
"strain_years"
