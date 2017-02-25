#!/bin/bash -e

make config-gcc
PREFIX=${YOSYS_BASE}/${VERSION} make ${JOBS}
PREFIX=${YOSYS_BASE}/${VERSION} make install

mkdir -p ${YOSYS_MODULEFILES}
cat <<EOF > ${YOSYS_MODULEFILES}/${VERSION}
#%Module
prepend-path PATH ${YOSYS_BASE}/${VERSION}/bin
EOF
