#!/bin/sh

xbps-create \
	--architecture noarch  \
	--dependencies "buz>=1.0.0" \
	--homepage "<https://github.com/user/repo>" \
	--license GPLv3 \
	--maintainer "John Smith" \
	--pkgver "foo-1.0_1" \
	--long-desc "Foo foo bar bar" \
	--desc "Foo bar" \
	--compression=xz \
	"$1"
