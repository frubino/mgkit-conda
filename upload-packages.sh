#!/bin/bash

find conda-build/ -name '*.tar.bz2' | xargs anaconda upload --skip-existing