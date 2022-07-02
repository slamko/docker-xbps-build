#!/bin/sh

xbps-create -A x86_64 \
	-n soft-1.0_1 \
	-s "Some software" \
	xbps-install-dir
