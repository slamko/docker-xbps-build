FROM voidlinux/voidlinux

RUN mkdir -p /usr/src/xbps-package-build/output
COPY . /usr/src/xbps-package-build
WORKDIR /usr/src/xbps-package-build/output

CMD [ "./run-xbps-bin-create.sh" ]
