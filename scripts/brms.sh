#!/bin/bash

set -e

# brms dependencies
install2.r --error --skipinstalled -n -1 \
    Rcpp           \
    rstan          \
    ggplot2        \
    loo            \
    posterior      \
    Matrix         \
    mgcv           \
    rstantools     \
    bayesplot      \
    bridgesampling \
    glue           \
    rlang          \
    future         \
    future.apply   \
    matrixStats    \
    nleqslv        \
    nlme           \
    coda           \
    abind          \
    backports

# brms
install2.r --error --skipinstalled -n -1 \
    brms

R -e "library(brms)"

echo -e "\nInstall brms, done!"
