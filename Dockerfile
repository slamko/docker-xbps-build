FROM voidlinux/voidlinux

RUN mkdir -p /usr/src/xbps-package-build/output
RUN mkdir -p /usr/src/xbps-package-build/installdir
COPY . /usr/src/xbps-package-build/installdir
WORKDIR /usr/src/xbps-package-build/output

CMD [ "./internal/run-xbps-bin-create.sh" ]
