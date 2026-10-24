
<!-- README.md is generated from .setup/readme/README.Rmd, which rProject's
docker template writes. Edit .setup/readme/description.md, scripts/cran.txt,
scripts/github.txt, or .setup/scripts/project.R instead. -->

# ijapesigan/r2u

<!-- badges: start -->

[![Docker Build and Push r2u \[multi\]
(Daily)](https://github.com/ijapesigan/docker-r2u/actions/workflows/docker-build-push-daily-multi-r2u.yml/badge.svg)](https://github.com/ijapesigan/docker-r2u/actions/workflows/docker-build-push-daily-multi-r2u.yml)
[![Docker Build and Push
\[multi\]](https://github.com/ijapesigan/docker-r2u/actions/workflows/docker-build-push-multi.yml/badge.svg)](https://github.com/ijapesigan/docker-r2u/actions/workflows/docker-build-push-multi.yml)
[![Make
Project](https://github.com/ijapesigan/docker-r2u/actions/workflows/make.yml/badge.svg)](https://github.com/ijapesigan/docker-r2u/actions/workflows/make.yml)
[![Non-ASCII
Check](https://github.com/ijapesigan/docker-r2u/actions/workflows/non-ascii-check.yml/badge.svg)](https://github.com/ijapesigan/docker-r2u/actions/workflows/non-ascii-check.yml)
[![Shell
Check](https://github.com/ijapesigan/docker-r2u/actions/workflows/shellcheck.yml/badge.svg)](https://github.com/ijapesigan/docker-r2u/actions/workflows/shellcheck.yml)
<!-- badges: end -->

## Description

An R image for projects based on
[r2u](https://github.com/eddelbuettel/r2u/): CRAN packages as Ubuntu
binaries, with rProject, TinyTeX, Quarto, structural equation modeling,
dynamic and state-space models, Bayesian modeling (Stan, JAGS, brms),
torch, and the Mplus demo (amd64).

Based on `rocker/r2u:24.04`; built for linux/amd64 and linux/arm64.
Source: <https://github.com/ijapesigan/docker-r2u>.

## Use

Docker (Docker Hub or the GitHub Container Registry):

``` bash
docker run -it ijapesigan/r2u
docker run -it ghcr.io/ijapesigan/r2u
```

Apptainer:

``` bash
apptainer pull r2u.sif docker://ijapesigan/r2u
apptainer shell r2u.sif
```

## Contents

R packages from CRAN (`scripts/cran.txt`), with their dependencies:

- tidyverse and data: tidyverse, vroom, gert, DT, arrow, dbplyr, DBI,
  dtplyr, duckdb, nycflights13, Lahman, RMariaDB, RPostgres, RSQLite,
  fst, tidymodels
- development: BiocManager, covr, devtools, distro, ggplot2, knitr,
  languageserver, lintr, magick, markdown, microbenchmark, pdftools,
  pkgdown, printr, qpdf, quarto, ragg, RefManageR, remotes, rhub,
  rmarkdown, rprojroot, styler, testthat
- SEM: lavaan, OpenMx, ifaTools, metaSEM, symSEM, semlbci, semmcci,
  semPlot, MplusAutomation, betaDelta, betaSandwich, betaNB, betaMC
- dynamic models: ctsem, simStateSpace, bootStateSpace, cTMed,
  fitVARMxID, metaDyn, mlVAR, vars, qgraph, igraph, fclust
- Bayesian: rstan, rjags, R2jags, brms
- torch (the backend: torch.sh): torch, luz, safetensors

R packages from GitHub (`scripts/github.txt`), installed after CRAN:

- [nx10/httpgd](https://github.com/nx10/httpgd)
- [rstudio/tinytex](https://github.com/rstudio/tinytex)
- [r-lib/cli](https://github.com/r-lib/cli)
- [r-lib/devtools](https://github.com/r-lib/devtools)
- [r-lib/roxygen2](https://github.com/r-lib/roxygen2)
- [ijapesigan/rProject](https://github.com/ijapesigan/rProject)
- [ijapesigan/longMI](https://github.com/ijapesigan/longMI)
- [jeksterslab/semmcci](https://github.com/jeksterslab/semmcci)
- [jeksterslab/betaDelta](https://github.com/jeksterslab/betaDelta)
- [jeksterslab/betaSandwich](https://github.com/jeksterslab/betaSandwich)
- [jeksterslab/betaNB](https://github.com/jeksterslab/betaNB)
- [jeksterslab/betaMC](https://github.com/jeksterslab/betaMC)
- [jeksterslab/simStateSpace](https://github.com/jeksterslab/simStateSpace)
- [jeksterslab/bootStateSpace](https://github.com/jeksterslab/bootStateSpace)
- [jeksterslab/cTMed](https://github.com/jeksterslab/cTMed)
- [jeksterslab/dynUtils](https://github.com/jeksterslab/dynUtils)
- [jeksterslab/dynTools](https://github.com/jeksterslab/dynTools)
- [jeksterslab/fitVARMxID](https://github.com/jeksterslab/fitVARMxID)
- [jeksterslab/metaDyn](https://github.com/jeksterslab/metaDyn)

## Builds

- Docker Build and Push r2u \[multi\] (Daily)
  (`docker-build-push-daily-multi-r2u.yml`): daily at 00:00 UTC, when
  the base image is rebuilt
- Docker Build and Push \[multi\] (`docker-build-push-multi.yml`): after
  Make Project
- Make Project (`make.yml`): on push
- Non-ASCII Check (`non-ascii-check.yml`): after Make Project
- Shell Check (`shellcheck.yml`): after Make Project

The images are pushed to Docker Hub and the GitHub Container Registry as
`ijapesigan/r2u:latest`.
