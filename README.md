## Build XBPS binary package from docker container.

The X Binary Package System (XBPS) is a fast package manager that has been designed and implemented from scratch. 
XBPS is managed by the Void Linux team and developed at https://github.com/void-linux/xbps.  

This repo aimes to simplify the procedure of creating binary packages for X Binary Package System on Linux distribution that for some weird reason do not use XBPS.

### Creating package

- #### Clone the repo somewhere in your project directory.
```
git clone https://github.com/slamko/docker-xbps-build.git
```
- #### You should ```cd``` into cloned directory so that Dockerfile could be visible when executing shell script.
```
cd docker-xbps-create
```
- #### Edit ```dockxbps-create-control``` according to your needs. The main options are included by default. For more information about available options see [man xbps-create](https://man.voidlinux.org/xbps-create.1). 
```
xbps-create — XBPS utility to create binary packages

NOTE:
 At least three flags are required: architecture, pkgver and desc.

EXAMPLE:
 $ xbps-create -A noarch -n foo-1.0_1 -s "foo pkg" destdir
```
- #### Build an image and run the container speficying directory that should be packed as XBPS binary package. 
```
./dockxbps-create <destdir>
```

Destination directory may look like this:
```
"destdir"/
└── usr
    ├── bin
    │   └── "binary"
    └── share
        ├── doc
        │   ├── README
        │   └── spmn
        ├── licenses
        │   └── spmn
        │       └── COPYING
        └── man
            └── man1
                └── "man page"
```

- #### Enjoy your XBPS package :)

