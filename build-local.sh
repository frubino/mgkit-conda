#!/bin/bash

# needs to install conda-build and conda-verify in an environments
# after that activate the environment and run this script

export BUILD_DIR=conda-build

mkdir -p $BUILD_DIR

export MGKIT_VERSION=0.5.8

for x in `seq 7 9` ; do
	echo "-----------------------------------------------------"
	echo Building MGKit $MGKIT_VERSION for Python 3.$x
	echo "-----------------------------------------------------"
	conda build --python=3.$x --output-folder $BUILD_DIR .
done
