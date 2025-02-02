#!/bin/sh
set -e
mkdir -p build/stand
mkdir -p build/raw
wget "https://www.cz88.net/api/communityIpAuthorization/communityIpDbFile?fn=czdb&key=${CZDB_DOWNLOAD_TOKEN}" -O build/czdb.zip
unzip build/czdb.zip -d build/

node src/packer_raw.js
ls -alh build/raw
VERSION=`cat version`
LATEST_VERSION=`node src/version.js`
if [ $VERSION != $LATEST_VERSION ]; then
  node src/packer.js
  ls -alh build/stand
  echo $LATEST_VERSION > version
  cat version
fi
