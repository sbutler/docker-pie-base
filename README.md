# Publish Base Image

This repository is for the base Docker image using by other Publish Docker
images. It installs some common, shared utilities used by most of the other
images.

Instead of having a normal branch structure with `main` and `develop`, this
repository is organized with branches for the base Docker image. Current
branches used for building:

- `ubuntu22.04`: production as of June 2022.
- `ubuntu20.04`
- `ubuntu18.04`: production before June 2022.
