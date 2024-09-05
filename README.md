# Blobfuse2 for Alpine Linux

This repo maintains a patch that enables the official [Azure Storage FUSE driver](https://github.com/Azure/azure-storage-fuse) to be built for Alpine Linux.

## About

From the [official repo]((https://github.com/Azure/azure-storage-fuse)):

>Blobfuse2 is an open source project developed to provide a virtual filesystem backed by the Azure Storage. It uses the libfuse open source library (fuse3) to communicate with the Linux FUSE kernel module, and implements the filesystem operations using the Azure Storage REST APIs. This is the next generation blobfuse

The official repo does not support Alpine Linux or other distributions based on the [musl](https://en.wikipedia.org/wiki/Musl) C Standard Library.

This repository aims to maintain a minimal patch and streamlined build process that allows the official source code to be built on Alpine Linux and thereby producing a musl-compatible binary.

## Binary Releases

Pre-built binaries are available via this repo's [Releases](https://github.com/endjin/azure-storage-fuse-alpine/releases).

The versioning for these releases will track the version numbers from the official repo.

## Building

A [VS Code Dev Container](https://code.visualstudio.com/docs/devcontainers/containers) is provided for the build environment.

Launch the Dev Container and run the `build-patch.sh` script to apply the patch and run the build process from the official repo, which has been added to this repo as a [Git Submodule](https://git-scm.com/book/en/v2/Git-Tools-Submodules).