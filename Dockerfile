FROM voidlinux/voidlinux

RUN mkdir -p /usr/src/xbps-package-build
COPY . /usr/src/xbps-package-build
WORKDIR /usr/src/xbps-package-build

CMD [ "./run-xbps-bin-create.sh" ]
