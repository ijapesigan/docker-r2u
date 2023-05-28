jeksterslab/docker-r2u
======================
Ivan Jacob Agaloos Pesigan

<!-- badges: start -->
[![Docker Build and Push](https://github.com/jeksterslab/docker-r2u/actions/workflows/docker-build-push.yml/badge.svg)](https://github.com/jeksterslab/docker-r2u/actions/workflows/docker-build-push.yml)
<!-- badges: end -->

## Description

Docker and Apptainer/Singularity containers for R projects based on `rocker/r2u`.

## Build Docker Container

The `Docker Build and Push` GitHub action builds the Docker container and pushes it to Docker Hub.

To run the Docker container run the following.

```bash
docker run -ti jeksterslab/docker-r2u
```

## Build Apptainer/Singularity Image File

To build the Apptainer/Singularity image file (`r2u.sif`),
run the following.

```bash
git clone https://github.com/jeksterslab/docker-r2u.git
cd docker-r2u
make
```
