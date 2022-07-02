#!/bin/sh

usage() {
	1>&2 echo "usage: xbps-create.sh <target>"
}

if [ "$#" -ne 1 ]; then
	usage
	exit 1
fi

if [ ! -d "$1" ]; then
	1>&2 echo "error: expected target directory"
	exit 1
fi

docker build -t xbps-pkg-build-img .
docker run --rm -v $(pwd):/usr/src/xbps-package-build --env XBPS_BUILD_TARGET_DIR="$1"  xbps-pkg-build-img 
