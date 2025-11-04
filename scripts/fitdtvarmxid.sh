#!/bin/bash

set -e

R -e "remotes::install_github(      \
    c(                              \
        'jeksterslab/fitDTVARMxID'      \
    )                               \
)"

R -e "library(fitDTVARMxID)"

echo -e "\nInstall fitDTVARMxID, done!"
