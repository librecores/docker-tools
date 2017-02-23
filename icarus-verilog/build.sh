#!/bin/bash -e

autoconf
./configure --prefix=${IVERILOG_BASE}/${VERSION}
make ${JOBS}
make install

mkdir -p ${IVERILOG_MODULEFILES}
cat <<EOF > ${IVERILOG_MODULEFILES}/${VERSION}
#%Module
prepend-path PATH ${IVERILOG_BASE}/${VERSION}/bin
EOF
