
<!-- README.md is generated from README.Rmd. Please edit that file -->

<!-- badges: start -->

[![R build
status](https://github.com/l-hodge/usefulr/workflows/R-CMD-check/badge.svg)](https://github.com/l-hodge/usefulr/actions)
[![Codecov test
coverage](https://codecov.io/gh/l-hodge/usefulR/branch/master/graph/badge.svg)](https://codecov.io/gh/l-hodge/usefulR?branch=master)
[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
<!-- badges: end -->

# usefulR

A series of ‘useful’ functions that perform general tasks.

### Functions

| Function       | Description                                                            |
| -------------- | ---------------------------------------------------------------------- |
| `get_infl`     | Fetches inflation time series from OBR incl outturn and projections    |
| `dist_weights` | Creates ‘Distributional’ or ‘Welfare’ weights for a vector of earnings |

### .Rmd Templates

``` r
rmarkdown::draft("ReportName.Rmd", template = "dfe-report-pdf", package = "usefulR")
```

You will need to have `tinytex` installed to render in the template. The
following steps should help you get started:

``` r
install.packages("tinytex")
tinytex::install_tinytex()
tinytex::tlmgr_repo("http://mirror.aut.ac.nz/CTAN/")
Sys.setenv(no_proxy="*")
```
