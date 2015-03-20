#!/usr/bin/env bash

rm -rf venv
mkdir -p venv/lib/python2.7/site-packages
scp -i .vagrant/machines/default/virtualbox/private_key -r -P 2222 vagrant@localhost:~/venv/lib/python2.7/site-packages/scipy\* venv/lib/python2.7/site-packages/
tar -cvzf scipy-0.14.0.tar.gz venv
mv scipy-0.14.0.tar.gz ..
rm -rf venv
