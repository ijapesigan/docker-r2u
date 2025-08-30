#!/bin/bash

set -e

# rstan dependencies
install2.r --error --skipinstalled -n -1 \
    StanHeaders                          \
    BH                                   \
    inline                               \
    gridExtra                            \
    Rcpp                                 \
    RcppEigen                            \
    RcppParallel                         \
    loo                                  \
    pkgbuild                             \
    QuickJSR

# rstan
install2.r --error --skipinstalled -n -1 \
    rstan

R -e "library(rstan)"

echo -e "\nInstall rstan, done!"
