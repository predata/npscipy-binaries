#!/usr/bin/env bash

rm -rf venv
mkdir -p venv/lib/python2.7/site-packages
ssh-keygen -f ~/.ssh/known_hosts -R [localhost]:2222
# ssh-keyscan -H localhost:2222 >> ~/.ssh/known_hosts
scp -o StrictHostKeyChecking=no -i .vagrant/machines/default/virtualbox/private_key -r -P 2222 vagrant@localhost:~/venv/lib/python2.7/site-packages/numpy\* venv/lib/python2.7/site-packages/
tar -cvzf numpy-${NUMPY_VERSION}.tar.gz venv
mv numpy-${NUMPY_VERSION}.tar.gz ..
rm -rf venv
