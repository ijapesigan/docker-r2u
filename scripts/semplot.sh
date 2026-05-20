#!/bin/bash

set -e

# semPlot
# install2.r --error --skipinstalled -n -1 \
#    semPlot

R -e "pak::pak('semPlot')"

R -e "library(semPlot)"

echo -e "\nInstall semPlot, done!"
