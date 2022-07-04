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

XBPS_CREATE_EXEC=xbps-create-control.sh

docker build -t xbps-pkg-build-img -f ./Dockerfile x"$1"
docker run --rm -v $(pwd):/usr/src/xbps-package-build/output --env XBPS_CREATE_EXEC="xbps-create-control.sh"  xbps-pkg-build-img 
