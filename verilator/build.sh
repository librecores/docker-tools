#!/bin/bash -e

autoconf
./configure --prefix=${VERILATOR_BASE}/${VERSION}
make ${JOBS}
make install

mkdir -p ${VERILATOR_MODULEFILES}
cat <<EOF > ${VERILATOR_MODULEFILES}/${VERSION}
#%Module
prepend-path PATH ${VERILATOR_BASE}/${VERSION}/bin
EOF
