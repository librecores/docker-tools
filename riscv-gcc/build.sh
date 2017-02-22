#!/bin/bash -e

INST_DATE=`git show -s --format=%ci ff21e26eb8c4d55dad7ad0b57e7bd8f7784a60e9 | awk '{split($0,d,"[- ]"); print d[1]d[2]d[3]}'`
export RISCV_PATH=/tools/compilers/riscv/${INST_DATE}-${VERSION}
export PATH=${RISCV_PATH}/bin:${PATH}

git submodule update --init --recursive
./configure --prefix=${RISCV_PATH} --with-arch=rv32i
make ${JOBS}
