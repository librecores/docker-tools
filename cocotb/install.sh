#!/bin/bash -e

FULL_VERSION=`git describe --tags`

mkdir -p /tools/eda/cocotb
cp -r /tmp/cocotb /tools/eda/cocotb/${FULL_VERSION}

mkdir -p /tools/Modules/modulefiles/eda/cocotb/
rm -f /tools/Modules/modulefiles/eda/cocotb/${FULL_VERSION}
cat <<EOF >> /tools/Modules/modulefiles/eda/cocotb/${FULL_VERSION}
#%Module
setenv COCOTB /tools/eda/cocotb/${FULL_VERSION}
EOF
