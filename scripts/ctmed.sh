#!/bin/bash

set -e

R -e "remotes::install_github(      \
    c(                              \
        'jeksterslab/cTMed'         \
    )                               \
)"

R -e "library(CTMed)"

echo -e "\nInstall cTMed, done!"
