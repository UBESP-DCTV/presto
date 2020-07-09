
<!-- README.md is generated from README.Rmd. Please edit that file -->

# presto [![](https://img.shields.io/badge/WEBsite-click--me-orange.svg)](https://ubesp-dctv.github.io/presto/) <img src='man/figures/logo.png' align="right" height="39.5" />

<!-- badges: start -->

[![Lifecycle:
maturing](https://img.shields.io/badge/lifecycle-maturing-blue.svg)](https://www.tidyverse.org/lifecycle/#maturing)
[![R build
status](https://github.com/UBESP-DCTV/presto/workflows/pkgdown/badge.svg)](https://github.com/UBESP-DCTV/presto/actions)
[![R build
status](https://github.com/UBESP-DCTV/presto/workflows/lint/badge.svg)](https://github.com/UBESP-DCTV/presto/actions)
[![R build
status](https://github.com/UBESP-DCTV/presto/workflows/R-CMD-check/badge.svg)](https://github.com/UBESP-DCTV/presto/actions)
[![R build
status](https://github.com/UBESP-DCTV/presto/workflows/test-coverage/badge.svg)](https://github.com/UBESP-DCTV/presto/actions)
<!-- badges: end -->

The goal of `{presto}` is to provide the R infrastructure for the
analyses of the project
[**\#PRESTOinsieme**](https://www.prestoinsieme.com/).

## Installation

You can install the development version of `{presto}` from
[CRAN](https://CRAN.R-project.org) with:

``` r
remotes::install_github("UBESP-DCTV/presto")
```

## Develop

The package support `{renv}` framework for project-level library. To
develop the package including the exact package configuration as it was
originally develop you can install `{renv}`

``` r
install.packages(renv)
```

and initialize it once the source package is cloned calling

``` r
renv::restore()
```

## Code of Conduct

Please note that the presto project is released with a [Contributor Code
of
Conduct](https://contributor-covenant.org/version/2/0/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.
