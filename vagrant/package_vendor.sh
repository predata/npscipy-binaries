#!/usr/bin/env bash

rm -rf vendor
mkdir -p vendor/lib
ssh-keygen -f "/home/andrew/.ssh/known_hosts" -R [localhost]:2222
scp -i .vagrant/machines/default/virtualbox/private_key -r -P 2222 vagrant@localhost:/usr/lib/atlas-base vendor/lib
# scp -i .vagrant/machines/default/virtualbox/private_key -r -P 2222 vagrant@localhost:/usr/lib/libgfortran.so.3 vendor/lib
# scp -i .vagrant/machines/default/virtualbox/private_key -r -P 2222 vagrant@localhost:/usr/lib/libgfortran.so.3.0.0 vendor/lib
tar -cvzf npscipy.tar.gz vendor
mv npscipy.tar.gz ..
rm -rf vendor