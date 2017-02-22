#!/bin/bash -e

autoreconf --install --symlink
CPPFLAGS="-DUSE_INTERP_ERRORLINE" ./configure --prefix=/tools/ --with-module-path=/tools/Modules/modulefiles
make
make install
