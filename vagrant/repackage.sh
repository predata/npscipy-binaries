#!/usr/bin/env bash

# export NUMPY_VERSION="1.9.1"
# export SCIPY_VERSION="0.14.0"

export NUMPY_VERSION="1.10.1"
export SCIPY_VERSION="0.16.1"

./package_numpy.sh && ./package_scipy.sh && ./package_vendor.sh 
