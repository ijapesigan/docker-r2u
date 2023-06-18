#!/bin/bash

set -e

# development packages and cran packages
install2.r --error --skipinstalled -n 1 \
    covr           \
    devtools       \
    distro         \
    ggplot2        \
    knitr          \
    languageserver \
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
