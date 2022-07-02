#!/bin/sh

usage() {
	echo "usage: "
}

if [ "$#" -ne 1 ]; then
	usage
	exit 1
fi

if [ ! -d "$1" ]; then
	echo "expected dir"
	exit 1
fi

cp -r "$1" ./xbps-install-dir/ 
docker build -t xbps-pkg-build-img .
docker run xbps-pkg-build-img
rm -rf ./xbps-install-dir/
