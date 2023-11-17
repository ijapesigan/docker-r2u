#!/bin/bash

set -e

# semmcci dependencies
install2.r --error --skipinstalled -n -1 \
    lavaan \
    mice

# semmcci
install2.r --error --skipinstalled -n -1 \
    semmcci

R -e "library(semmcci)"

echo -e "\nInstall semmcci, done!"
