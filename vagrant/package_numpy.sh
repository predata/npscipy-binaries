#!/usr/bin/env bash

rm -rf venv
mkdir -p venv/lib/python2.7/site-packages
scp -i .vagrant/machines/default/virtualbox/private_key -r -P 2222 vagrant@localhost:~/venv/lib/python2.7/site-packages/numpy\* venv/lib/python2.7/site-packages/
tar -cvzf numpy-1.9.1.tar.gz venv
mv numpy-1.9.1.tar.gz ..
rm -rf venv
