#!/bin/bash

set -e

# semPlot
install2.r --error --skipmissing --skipinstalled -n -1 \
    semPlot

R -e "library(semPlot)"

echo -e "\nInstall semPlot, done!"
