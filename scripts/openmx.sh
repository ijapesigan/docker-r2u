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

# OpenMx
install2.r --error --skipinstalled -n -1 \
    OpenMx

# R -e "                                                 \
#   install.packages(                                    \
#     'OpenMx',                                          \
#     contriburl = contrib.url(                          \
#       repos = 'https://openmx.ssri.psu.edu/software/', \
#       type = 'source'                                  \
#     ),                                                 \
#     dependencies = NA,                                 \
#     verbose = TRUE                                     \
#   );                                                   \
#   demo('BivariateCorrelation', package = 'OpenMx')     \
# "

# Item factor analysis in OpenMx
install2.r --error --skipinstalled -n -1 \
    ifaTools

R -e "library(OpenMx)"

echo -e "\nInstall OpenMx, done!"
