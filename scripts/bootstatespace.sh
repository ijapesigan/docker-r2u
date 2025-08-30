#!/bin/bash

set -e

# bootStateSpace dependencies
install2.r --error --skipmissing --skipinstalled -n -1 \
    simStateSpace

# install dynr manually

# bootStateSpace
install2.r --error --skipmissing --skipinstalled -n -1 \
    bootStateSpace

R -e "library(bootStateSpace)"

echo -e "\nInstall bootStateSpace, done!"
