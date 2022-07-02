FROM voidlinux/voidlinux

RUN mkdir -p /usr/src/xbps-package-build
COPY . /usr/src/xbps-package-build
WORKDIR /usr/src/xbps-package-build

RUN xbps-install -S
RUN xbps-install -uy xbps
RUN xbps-install -Syu

CMD [ "./run-xbps-bin-create.sh" ]
