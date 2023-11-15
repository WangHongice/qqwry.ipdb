#!/bin/sh

set -e

mkdir -p build/stand
mkdir -p build/raw

wget https://raw.githubusercontent.com/nmgliangwei/qqwry/main/version -O ./version
VERSION=`cat version`
wget https://github.com/nmgliangwei/qqwry/releases/download/$VERSION/qqwry.dat -4 -O build/qqwry.dat
# node src/decode.js
node src/packer.js
node src/packer_raw.js
