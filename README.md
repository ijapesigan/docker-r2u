ijapesigan/r2u
================
Ivan Jacob Agaloos Pesigan
2024-01-22

<!-- README.md is generated from .setup/readme/README.Rmd. Please edit that file -->
<!-- badges: start -->

[![Make
Project](https://github.com/ijapesigan/docker-r2u/actions/workflows/make.yml/badge.svg)](https://github.com/ijapesigan/docker-r2u/actions/workflows/make.yml)
[![Docker and Apptainer Build and Push
\[amd64\]](https://github.com/ijapesigan/docker-r2u/actions/workflows/docker-apptainer-build-push-amd64.yml/badge.svg)](https://github.com/ijapesigan/docker-r2u/actions/workflows/docker-apptainer-build-push-amd64.yml)
[![Docker and Apptainer Build and Push \[amd64\]
(Weekly)](https://github.com/ijapesigan/docker-r2u/actions/workflows/docker-apptainer-build-push-weekly-amd64.yml/badge.svg)](https://github.com/ijapesigan/docker-r2u/actions/workflows/docker-apptainer-build-push-weekly-amd64.yml)
[![Docker Build and Push \[amd64\]
(Daily)](https://github.com/ijapesigan/docker-r2u/actions/workflows/docker-build-push-daily-amd64.yml/badge.svg)](https://github.com/ijapesigan/docker-r2u/actions/workflows/docker-build-push-daily-amd64.yml)
[![Shell
Check](https://github.com/ijapesigan/docker-r2u/actions/workflows/shellcheck.yml/badge.svg)](https://github.com/ijapesigan/docker-r2u/actions/workflows/shellcheck.yml)
<!-- badges: end -->

## Description

Docker and Apptainer/Singularity containers for `R` projects based on
[r2u](https://github.com/eddelbuettel/r2u/).

## GitHub Actions

The `Docker and Apptainer Build and Push [amd64]` GitHub actions
workflow performs the following:

- Builds the Docker image specified by the `Dockerfile`.
- Pushes the image to
  [DockerHub](https://hub.docker.com/r/ijapesigan/r2u) using the tags
  `latest` and `date and time of build (YEAR-MM-DD-HHMMSSMS)`.
- Builds the Singularity Image File (SIF) using Apptainer based on the
  Docker Hub image from the previous step.
- Creates a GitHub release named `r2u-YEAR-MM-DD-HHMMSSMS`. Note that
  `r2u-YEAR-MM-DD-HHMMSSMS.zip` contains the SIF.

## Docker Shell

``` bash
docker run -it ijapesigan/r2u
```

## Apptainer Shell

Download and unzip `r2u-YEAR-MM-DD-HHMMSSMS.zip` from the GitHub release
to extract `r2u-YEAR-MM-DD-HHMMSSMS.sif`.

``` bash
apptainer shell r2u-YEAR-MM-DD-HHMMSSMS.sif
```
