#!/bin/bash
set -e

# get the directory of the script so this can be run from anywhere
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

# ensure submodule is initialised
git submodule update --init --recursive

# reset any previous patching
git submodule foreach --recursive git reset --hard

# apply the patch
cd $SCRIPT_DIR/azure-storage-fuse
patch --strip=1 --input=../alpine-patch.diff

# run the azure-storage-fuse build
./build.sh

# grab the built binary
cp ./blobfuse2 ../blobfuse2_Linux_musl_64bit