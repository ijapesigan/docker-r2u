#!/bin/bash

set -e

R -e "                                                       \
  if (require('StanHeaders')) remove.packages('StanHeaders') \
"

R -e "                                           \
  if (require('rstan')) remove.packages('rstan') \
"
R -e "                                                                                        \
  install.packages('rstan', repos = c('https://stan-dev.r-universe.dev', getOption('repos'))) \
"

R -e "library(rstan)"

echo -e "\nInstall rstan, done!"
