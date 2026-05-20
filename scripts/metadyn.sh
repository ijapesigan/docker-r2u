#!/bin/bash

set -e

# metaDyn
install2.r --error --skipinstalled -n -1 \
    metaDyn

R -e "library(metaDyn)"

echo -e "\nInstall metaDyn, done!"
