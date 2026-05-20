#!/bin/bash

set -e

R -e "options(timeout = 1200); install.packages('cuda12.8', repos = c('https://mlverse.r-universe.dev', 'https://cloud.r-project.org'))"

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
    luz                                  \
    safetensors                          \
    jsonlite                             \
    scales

install2.r --error --skipinstalled -n -1 \
    torch

r_arch="$(Rscript -e "cat(R.version\$arch)")"

case "${r_arch}" in
    x86_64|amd64)
        Rscript -e "options(timeout = 1200); Sys.setenv(TORCH_INSTALL = '1', TORCH_CUDATOOLKIT = '12.8'); library(torch); install_torch(); print(cuda_is_available())"
        ;;
    *)
        echo "Skipping torch CUDA install on non-x86 R architecture: ${r_arch}"
        ;;
esac

R -e "library(torch)"

echo -e "\nInstall torch, done!"
