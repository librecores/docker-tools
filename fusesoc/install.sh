#!/bin/bash -e

pip install -U --prefix ${FUSESOC_BASE}/${VERSION} .

mkdir -p ${FUSESOC_MODULEFILES}
cat <<EOF > ${FUSESOC_MODULEFILES}/${VERSION}
#%Module
prepend-path PATH ${FUSESOC_BASE}/${VERSION}/bin
prepend-path PYTHONPATH ${FUSESOC_BASE}/${VERSION}
EOF
