#!/bin/bash

set -e

# torch's R packages are in cran.txt (# torch); this installs the CUDA
# runtime package and the libtorch backend
R -e "options(timeout = 1200); install.packages('cuda12.8', repos = c('https://mlverse.r-universe.dev', 'https://cloud.r-project.org'))"

r_arch="$(Rscript -e "cat(R.version\$arch)")"
case "${r_arch}" in
    x86_64|amd64)
        Rscript -e "options(timeout = 1200); Sys.setenv(TORCH_INSTALL = '1', TORCH_CUDATOOLKIT = '12.8'); library(torch); install_torch(); print(cuda_is_available())"
        ;;
    *)
        echo "Skipping torch CUDA install on non-x86 R architecture: ${r_arch}"
        ;;
esac

echo -e "\nInstall torch, done!"
