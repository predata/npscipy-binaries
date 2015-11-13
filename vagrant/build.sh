#!/usr/bin/env bash

set -o pipefail

vagrant up
./repackage.sh
vagrant destroy
