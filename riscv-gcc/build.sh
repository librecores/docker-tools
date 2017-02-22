#!/bin/bash -e

INST_DATE=`git show -s --format=%ci ff21e26eb8c4d55dad7ad0b57e7bd8f7784a60e9 | awk '{split($0,d,"[- ]"); print d[1]d[2]d[3]}'`
export INST_VERSION=${INST_DATE}-${VERSION}
export RISCV_PATH=/tools/compilers/riscv/${INST_VERSION}
export PATH=${RISCV_PATH}/bin:${PATH}

git submodule update --init --recursive
./configure --prefix=${RISCV_PATH} --with-arch=rv32i
make ${JOBS}

export RISCV_MODULEPATH=/tools/Modules/modulefiles/compilers/riscv/
mkdir -p ${RISCV_MODULEPATH}
rm -f ${RISCV_MODULEPATH}/${INST_VERSION}
cat <<EOF >> ${RISCV_MODULEPATH}/${INST_VERSION}
#%Module
prepend-path PATH ${RISCV_PATH}/bin
EOF
