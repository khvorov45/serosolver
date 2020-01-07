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
#'   \item{name}{Parameter name.}
#'
#'   \item{value}{Parameter initial value.}
#'
#'   \item{fixed}{1 - fixed, 0 - needs to be estimated.}
#'
#'   \item{steps}{How far to step on unit scale to begin with?}
#'
#'   \item{lower_bound}{Parameters cannot step below this.}
#'
#'   \item{upper_bound}{Parameters cannot step above this.}
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

#' Default MCMC settings
#'
#' @format A named vector with the following variables:
#'
#'   \describe{
#'
#'   \item{iterations}{How many iterations to run after adaptive period.}
#'
#'   \item{popt}{Desired optimal acceptance rate.}
#'
#'   \item{popt_hist}{}
#'
#'   \item{opt_freq}{How often to adjust step size.}
#'
#'   \item{thin}{Save only every nth iterations for theta sampling.}
#'
#'   \item{adaptive_period}{How many iterations for adaptive period}
#'
#'   \item{save_block}{How many post-thinning iterations to store before saving
#'   to disk.}
#'
#'   \item{thin_hist}{Save only every nth iterations for infection history
#'   sampling.}
#'
#'   \item{hist_sample_prob}{What proportion of infection histories to sample
#'   each step.}
#'
#'   \item{switch_sample}{Resample infection histories every n iterations.}
#'
#'   \item{burnin}{Run this many iterations before attempting adaptation. Idea
#'   is to reduce getting stuck in local maxima.}
#'
#'   \item{inf_propn}{Number of infections to move/remove/add in each proposal
#'   step.}
#'
#'   \item{move_size}{Number of infections to move/remove/add in each proposal
#'   step.}
#'
#'   \item{hist_opt}{Should infection history proposal step be adaptive?}
#'
#'   \item{swap_propn}{If using gibbs, what proportion of proposals should be
#'   swap steps.}
#'
#'   \item{hist_switch_prob}{If using gibbs, what proportion of iterations
#'   should be swapping contents of two time periods?}
#'
#'   \item{year_swap_propn}{If gibbs and swapping contents, what proportion of
#'   these time periods should be swapped?}
#'
#'   \item{propose_from_prior}{}
#'
#'   }
"mcmc_settings_default"
