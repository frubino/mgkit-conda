#!/bin/sh

export BUILD_DIR=conda-build

mkdir -p $BUILD_DIR

export MGKIT_VERSION=0.5.8

for x in `seq 7 9` ; do
    echo "-----------------------------------------------------"
    echo Building MGKit $MGKIT_VERSION for Python 3.$x
    echo "-----------------------------------------------------"
    sudo docker run -it --rm \
        -v $PWD/meta.yaml:/home/mgkit/package/meta.yaml:ro \
        -v $PWD/conda-build:/home/mgkit/package/$BUILD_DIR \
        -e DOCKER_PYTHON_VER=3.$x -e MGKIT_VERSION=$MGKIT_VERSION \
        frubino/mgkit:build
done