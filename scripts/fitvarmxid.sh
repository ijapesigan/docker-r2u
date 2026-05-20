#!/bin/bash

set -e

install2.r --error --skipinstalled -n -1 \
    fitVARMxID

R -e "library(fitVARMxID)"

echo -e "\nInstall fitVARMxID, done!"
