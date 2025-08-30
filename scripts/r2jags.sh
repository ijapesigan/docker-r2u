#!/bin/bash

set -e

# R2jags dependencies
install2.r --error --skipmissing --skipinstalled -n -1 \
    abind \
    coda \
    R2WinBUGS \
    stringr

# R2jags
install2.r --error --skipmissing --skipinstalled -n -1 \
    R2jags

R -e "library(R2jags)"

echo -e "\nInstall R2jags, done!"
