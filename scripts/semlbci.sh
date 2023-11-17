#!/bin/bash

set -e

# semlbci dependencies
install2.r --error --skipinstalled -n -1 \
  lavaan  \
  nloptr  \
  MASS    \
  ggplot2 \
  ggrepel \
  rlang   \
  pbapply

# semlbci
install2.r --error --skipinstalled -n -1 \
    semlbci

R -e "library(semlbci)"

echo -e "\nInstall semlbci, done!"
