#!/usr/bin/env bash

# PYTHON_VERSION="2.7.9"
# NUMPY_VERSION="1.9.1"
# SCIPY_VERSION="0.14.0"

PYTHON_VERSION="2.7.10"
NUMPY_VERSION="1.10.1"
SCIPY_VERSION="0.16.1"

apt-get update
apt-get install -y build-essential python-dev zlib1g-dev libssl-dev python-virtualenv liblapack-dev libatlas-dev gfortran libatlas3-base

wget https://www.python.org/ftp/python/${PYTHON_VERSION}/Python-${PYTHON_VERSION}.tgz
tar xvf Python-${PYTHON_VERSION}.tgz
cd Python-${PYTHON_VERSION}
# ./configure --prefix=/home/vagrant/python-${PYTHON_VERSION} --enable-unicode=ucs4
./configure --prefix=/home/vagrant/python-${PYTHON_VERSION} --enable-unicode=ucs2
# ./configure --prefix=/home/vagrant/python-${PYTHON_VERSION}
make
make install

cd /home/vagrant
virtualenv -p /home/vagrant/python-${PYTHON_VERSION}/bin/python venv

source venv/bin/activate

pip install numpy==${NUMPY_VERSION}
pip install scipy==${SCIPY_VERSION}
