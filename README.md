
<!-- README.md is generated from README.Rmd. Please edit that file -->

# serosolver

`serosolver` is a modelling and inference package that uses a dynamic
model to infer antibody dynamics and infection histories from
cross-sectional or longitudinal serological data. The model infers
individual-level infection histories, historical attack rates, and
patterns of antibody dynamics by accounting for cross-reactive antibody
responses and measurement error.

## Installation

1.  Install [R](http://cran.r-project.org)

2.  Install the development version of serosolver from
    [GitHub](https://github.com/seroanalytics/serosolver):

<!-- end list -->

``` r
devtools::install_github("seroanalytics/serosolver")
library(serosolver)
```

## Quick start and vignettes

Read the [quick start
vignette](https://seroanalytics.github.io/serosolver/articles/serosolver-quick_start_guide.html)
to set up and run a simple implementation with a simulation model.

There are additional Rmarkdown vignettes for [Case
Study 1](https://seroanalytics.github.io/serosolver/articles/cs1_vignette.html)
(longitudinal analysis of influenza A/H1N1p in Hong Kong) and [Case
Study 2](https://seroanalytics.github.io/serosolver/articles/cs2_vignette.html)
(cross-sectional analysis of influenza A/H3N2 in Guangzhou Province,
China), to accompany the analysis in the serosolver paper.
