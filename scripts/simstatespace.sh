#!/bin/bash

set -e

# simstatespace
install2.r --error --skipinstalled -n -1 \
  simStateSpace

R -e "library(simStateSpace)"

echo -e "\nInstall simStateSpace, done!"
