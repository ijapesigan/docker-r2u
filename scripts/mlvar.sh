#!/bin/bash

set -e

# mlVAR dependencies
install2.r --error --skipinstalled -n -1 \
    lme4                                 \
    arm                                  \
    qgraph                               \
    dplyr                                \
    clusterGeneration                    \
    mvtnorm                              \
    corpcor                              \
    plyr                                 \
    abind                                \
    MplusAutomation                      \
    graphicalVAR                         \
    rlang

# mlVAR
install2.r --error --skipinstalled -n -1 \
    mlVAR

R -e "library(mlVAR)"

echo -e "\nInstall mlVAR, done!"
