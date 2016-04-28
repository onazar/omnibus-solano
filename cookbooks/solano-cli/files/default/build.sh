#!/usr/bin/env bash

set -ex
source /home/kitchen/load-omnibus-toolchain.sh
cd /home/kitchen/solano
bundle install --binstubs bundle_bin --without development test

./bundle_bin/omnibus build solano