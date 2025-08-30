#!/bin/bash

set -e

# metaSEM dependencies
install2.r --error --skipinstalled -n -1 \
    Matrix   \
    MASS     \
    ellipse  \
    mvtnorm  \
    numDeriv \
    lavaan

# OpenMx is installed using openmx.sh

# metaSEM
install2.r --error --skipinstalled -n -1 \
    metaSEM

R -e "library(metaSEM)"

echo -e "\nInstall metaSEM, done!"
