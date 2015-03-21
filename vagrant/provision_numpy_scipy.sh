#!/usr/bin/env bash

apt-get update
apt-get install -y build-essential python-dev zlib1g-dev libssl-dev python-virtualenv liblapack-dev libatlas-dev gfortran

wget https://www.python.org/ftp/python/2.7.9/Python-2.7.9.tgz
tar xvf Python-2.7.9.tgz
cd Python-2.7.9
# ./configure --prefix=/home/vagrant/python-2.7.9 --enable-unicode=ucs4
./configure --prefix=/home/vagrant/python-2.7.9
make
make install

cd /home/vagrant
virtualenv -p /home/vagrant/python-2.7.9/bin/python venv

source venv/bin/activate

pip install numpy==1.9.1
pip install scipy==0.14.0
