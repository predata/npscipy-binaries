#!/usr/bin/env bash

apt-get update
apt-get install -y python-virtualenv python-dev liblapack-dev libatlas-dev gfortran

virtualenv venv

source venv/bin/activate

pip install numpy==1.9.1
pip install scipy==0.14.0
