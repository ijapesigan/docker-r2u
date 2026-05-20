#!/bin/bash

set -e

# torch dependencies
install2.r --error --skipinstalled -n -1 \
    Rcpp                                 \
    R6                                   \
    withr                                \
    rlang                                \
    bit64                                \
    magrittr                             \
    coro                                 \
    callr                                \
    cli                                  \
    glue                                 \
    desc                                 \
    safetensors                          \
    jsonlite                             \
    scales

install2.r --error --skipinstalled -n -1 \
    torch


R -e "library(torch); install_torch(); print(cuda_is_available()); print(torch_randn(c(2, 2), device = 'cuda'))"

echo -e "\nInstall torch, done!"
