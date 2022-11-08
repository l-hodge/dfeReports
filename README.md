
<!-- README.md is generated from README.Rmd. Please edit that file -->

# usefulR

<!-- badges: start -->

[![R build
status](https://github.com/l-hodge/usefulr/workflows/R-CMD-check/badge.svg)](https://github.com/l-hodge/usefulr/actions)
[![Codecov test
coverage](https://codecov.io/gh/l-hodge/usefulR/branch/main/graph/badge.svg)](https://app.codecov.io/gh/l-hodge/usefulR/branch/main)
[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)

<!-- badges: end -->

## Overview

Write Department for Education (DfE) research reports in Rmarkdown,
according to the [template and style
guide](https://www.gov.uk/government/publications/research-reports-guide-and-template).

## Installation

``` r
# install.packages("remotes")
remotes::install_github("l-hodge/usefulR")
```

## Functions

| Function        | Description                                                                      |
|-----------------|----------------------------------------------------------------------------------|
| `dfe_colours()` | Creates DfE colour palettes, typically monochrome sequential or spectral schemes |
| `dfe_table()`   | Wrapper for `knitr::kable` to produce tables in the DfE style                    |

## Rmarkdown output formats

This package includes two Rmarkdown output formats to produce DfE
research reports.

| Function            | Description                                                                  |
|---------------------|------------------------------------------------------------------------------|
| `basic_report()`    | A basic DfE research report based on rmarkdown::pdf_document()               |
| `research_report()` | A [bookdown](https://bookdown.org/yihui/bookdown/)-style DfE research report |

### Example yaml

``` yaml
---
title: "The title"
month: Month
date: Year
author: "Author1, Author2 and Author3"
affiliation: "Department for Education"
email: "xxxx@education.gov.uk"
dferef: "xxxx"
isbn: "xxxx"
output: 
   usefulR::research_report:
      latex_engine: xelatex
bibliography: biblio.bib
---
```

### Starting from a template

You can start a new report from a template using `rmarkdown::draft()` in
the console:

``` r
rmarkdown::draft("ReportName.Rmd", template = "dfe-report-pdf", package = "usefulR")
```

or in RStudio navigate to R Markdown… \> From Template \> DfE Report
Template \> OK

### TinyTeX

You will need to have [`tinytex`](https://yihui.org/tinytex/) installed
to render these output formats. The following steps should help you get
started:

``` r
# Install package
install.packages("tinytex") 
# Install TinyTeX
tinytex::install_tinytex()
# Set CTAN mirror - some of them don't work, this one does(!)
tinytex::tlmgr_repo("http://mirror.aut.ac.nz/CTAN/")
# This is required to get around the DfE proxy
Sys.setenv(no_proxy="*")
```
