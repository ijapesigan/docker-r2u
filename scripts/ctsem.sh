#!/bin/bash

set -e

# ctsem dependencies
install2.r --error --skipmissing --skipinstalled -n -1 \
    cOde                                 \
    data.table                           \
    Deriv                                \
    expm                                 \
    ggplot2                              \
    MASS                                 \
    Matrix                               \
    mize                                 \
    mvtnorm                              \
    plyr                                 \
    RcppParallel                         \
    rstan                                \
    rstantools                           \
    tibble                               \
    BH                                   \
    Rcpp                                 \
    RcppEigen                            \
    RcppParallel                         \
    StanHeaders

# ctsem
install2.r --error --skipmissing --skipinstalled -n -1 \
    ctsem

R -e "library(ctsem)"

echo -e "\nInstall ctsem, done!"
