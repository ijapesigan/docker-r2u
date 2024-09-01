#!/bin/bash

set -e

R -e "                                                                                        \
  install.packages('rstan', repos = c('https://stan-dev.r-universe.dev', getOption('repos'))) \
"

R -e "library(rstan)"

echo -e "\nInstall rstan, done!"
