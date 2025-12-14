#!/bin/bash

set -e

# OpenMx dependencies
install2.r --error --skipinstalled -n -1 \
    BH            \
    covr          \
    digest        \
    ggplot2       \
    knitr         \
    lifecycle     \
    lme4          \
    markdown      \
    MASS          \
    Matrix        \
    mvtnorm       \
    numDeriv      \
    Rcpp          \
    RcppArmadillo \
    RcppEigen     \
    RcppGSL       \
    RcppTOML      \
    RcppParallel  \
    reshape2      \
    rmarkdown     \
    roxygen2      \
    rpf           \
    snowfall      \
    StanHeaders   \
    testthat
