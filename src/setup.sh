#!/bin/bash

set -e

## build ARGs
NCPUS=${NCPUS:--1}

# development packages and cran packages
install2.r --error --skipinstalled -n "$NCPUS" \
    covr           \
    devtools       \
    distro         \
    ggplot2        \
    knitr          \
    lintr          \
    magick         \
    microbenchmark \
    pdftools       \
    pkgdown        \
    ragg           \
    remotes        \
    rmarkdown      \
    rprojroot      \
    styler         \
    testthat       \
    tidyverse      \
    qpdf           \
    semmcci        \
    betaDelta      \
    betaSandwich   \
    betaNB         \
    betaMC

# development packages from GitHub
R -e "remotes::install_github(  \
    c(                          \
        'rstudio/tinytex',      \
        'r-lib/cli',            \
        'r-lib/devtools',       \
        'r-hub/rhub'            \
    )                           \
)"
R -e "remotes::install_github(      \
    c(                              \
        'jeksterslab/rProject',     \
        'jeksterslab/semmcci',      \
        'jeksterslab/betaDelta',    \
        'jeksterslab/betaSandwich', \
        'jeksterslab/betaNB',       \
        'jeksterslab/betaMC'        \
    )                               \
)"
R -e "tinytex::install_tinytex( \
    bundle = 'TinyTeX',         \
    force = TRUE,               \
    dir =  '/opt/TinyTeX'       \
)"

## build details
CONTAINER_RELEASE=$( date '+%F-%H%M%S%2N' )
echo "export CONTAINER_RELEASE=$CONTAINER_RELEASE" > /etc/profile.d/container_init.sh
CONTAINER_RELEASE_MSG="\"This release is based on the $CONTAINER_RELEASE build.\""
echo "export CONTAINER_RELEASE_MSG=$CONTAINER_RELEASE_MSG" >> /etc/profile.d/container_init.sh
mkdir -p /srv/build
cd /srv/build
touch CONTAINER_RELEASE_MSG
touch CONTAINER_RELEASE
echo "$CONTAINER_RELEASE_MSG" > CONTAINER_RELEASE_MSG
sed -i s/\"//g CONTAINER_RELEASE_MSG
echo "$CONTAINER_RELEASE" > CONTAINER_RELEASE

# Clean up
rm -rf /var/lib/apt/lists/*
rm -rf /tmp/downloaded_packages

# Installation information
echo -e "Session information...\n"
R -q -e "sessionInfo()"
echo -e "Installed packages...\n"
R -q -e "unname(installed.packages()[, 1])"
echo -e "\n$CONTAINER_RELEASE_MSG"
echo -e "\nBuild done!"
