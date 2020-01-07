# Default MCMC settings

mcmc_settings_default <- c(
  "iterations" = 50000, "popt" = 0.44, "popt_hist" = 0.44, "opt_freq" = 2000,
  "thin" = 1, "adaptive_period" = 10000,
  "save_block" = 100, "thin_hist" = 10, "hist_sample_prob" = 0.5,
  "switch_sample" = 2, "burnin" = 0, "inf_propn" = 0.5, "move_size" = 3,
  "hist_opt" = 0, "swap_propn" = 0.5, "hist_switch_prob" = 0,
  "year_swap_propn" = 1, "propose_from_prior" = TRUE
)

usethis::use_data(mcmc_settings_default, overwrite = TRUE)
