# webddx

[![Travis-CI Build Status](https://travis-ci.org/rrrlw/webddx.svg?branch=master)](https://travis-ci.org/rrrlw/webddx)
[![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/rrrlw/webddx?branch=master&svg=true)](https://ci.appveyor.com/project/rrrlw/webddx)

[![License: GPL v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)
[![CRAN version](http://www.r-pkg.org/badges/version/webddx)](https://CRAN.R-project.org/package=webddx)
[![CRAN Downloads](http://cranlogs.r-pkg.org/badges/grand-total/webddx)](https://CRAN.R-project.org/package=webddx)

## Overview

webddx is an R package allowing for programmatic interaction with web-based differential diagnosis-generating tools.
It provides an API client for popular tools (e.g. OMIM) with complementary functionality (e.g. visualization) to serve as an effective tool in clinical informatics research.

## Installation

To install webddx, run the following R code:
```r
# install from CRAN
install.packages("webddx")

# install development version from GitHub
devtools::install_github("rrrlw/webddx")

# install development version with vignettes/tutorials
devtools::install_github("rrrlw/webddx", build_vignettes = TRUE)
```

## Sample code

```r
# load webddx
library("webddx")

# query FindZebra for rare diseases involving muscle pain and fatigue
query_fz(query = c("muscle pain", "fatigue"))
```

See the documentation of `query_fz` for information on customizing FindZebra queries using additional parameters.

## Functionality

Currently, webddx implements an API client for [FindZebra](http://www.findzebra.com).
Development is focused on adding an API client for OMIM.

## Contribute

To contribute to webddx, you can create issues for any bugs/suggestions on the [issues page](https://github.com/rrrlw/webddx/issues). You can also fork the webddx repository and create pull requests to implement features.
