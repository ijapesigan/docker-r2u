#!/bin/bash

set -e

# rjags dependencies
install2.r --error --skipinstalled -n -1 \
    coda

# mlVAR
install2.r --error --skipinstalled -n -1 \
    rjags

R -e "library(rjags)"

echo -e "\nInstall rjags, done!"
