# jeksterslab/r2u

Ivan Jacob Agaloos Pesigan

<!-- badges: start -->
[![Docker and Apptainer Build and Push (Weekly)](https://github.com/jeksterslab/docker-r2u/actions/workflows/docker-apptainer-build-push-weekly.yml/badge.svg)](https://github.com/jeksterslab/docker-r2u/actions/workflows/docker-apptainer-build-push-weekly.yml)
<!-- badges: end -->

## Description

Docker and Apptainer/Singularity containers for `R` projects based on [r2u](https://github.com/eddelbuettel/r2u/).

## GitHub Actions

The `Docker and Apptainer Build and Push (Weekly)` GitHub actions workflow performs the following:

- Builds the Docker image specified by the `Dockerfile`.
- Pushes the image to [DockerHub](https://hub.docker.com/repository/docker/jeksterslab/r2u/general) using the tags `latest` and `date and time of build (YEAR-MM-DD-HHMMSS)`.
- Builds the Singularity Image File (SIF) using Apptainer based on the Docker Hub image from the previous step.
- Creates a GitHub release named `sif-YEAR-MM-DD-HHMMSS`. Note that `sif-YEAR-MM-DD-HHMMSS.zip` contains the SIF. 

## Docker Shell

```bash
docker run -it jeksterslab/r2u
```

## Apptainer Shell

Download and unzip `sif-YEAR-MM-DD-HHMMSS.zip` from the GitHub release to extract `r2u.sif`.

```bash
apptainer shell r2u.sif
```
