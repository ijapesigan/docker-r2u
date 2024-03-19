#!/bin/bash

set -e

R -e "remotes::install_github(      \
    c(                              \
        'jeksterslab/dynUtils'      \
    )                               \
)"

R -e "library(dynUtils)"

echo -e "\nInstall dynUtils, done!"
