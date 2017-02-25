#!/bin/bash -e

FULL_VERSION=`git describe --tags`

mkdir -p /tools/eda/cocotb
cp -r /tmp/cocotb ${COCOTB_BASE}/${FULL_VERSION}

mkdir -p ${COCOTB_MODULEFILES}
cat <<EOF > ${COCOTB_MODULEFILES}/${FULL_VERSION}
#%Module
setenv COCOTB ${COCOTB_BASE}/${FULL_VERSION}
EOF
