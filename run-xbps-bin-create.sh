#!/bin/sh

xbps-create \
	--architecture x86_64 \
	--pkgver soft-1.0_1 \
	--desc "Some software" \
    "$XBPS_BUILD_TARGET_DIR"
