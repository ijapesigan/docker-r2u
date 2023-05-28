FROM rocker/r2u:22.04

RUN install2.r --error \
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
        qpdf        && \
	R -e "remotes::install_github( \
      c(                           \
        'rstudio/tinytex',         \
        'r-lib/cli',               \
        'r-lib/devtools',          \
        'r-hub/rhub'               \
      )                            \
    )"                          && \
    R -e "remotes::install_github( \
      c(                           \
        'jeksterslab/rProject'     \
      )                            \
    )"                          && \
    R -e "tinytex::install_tinytex( \
      bundle = 'TinyTeX-2',         \
      force = TRUE,                 \
      dir =  '/opt/TinyTeX'         \
    )"

ENV PATH="/opt/TinyTeX/bin/x86_64-linux:${PATH}"

# author
MAINTAINER "Ivan Jacob Agaloos Pesigan <learn.jeksterslab@gmail.com>"

# extra metadata
LABEL description="rocker container."
