#!/bin/bash -e

pip install -U --prefix /tools/eda/fusesoc/${VERSION} .
mkdir -p /tools/Modules/modulefiles/eda/fusesoc/
rm -f /tools/Modules/modulefiles/eda/fusesoc/${VERSION}
cat <<EOF >> /tools/Modules/modulefiles/eda/fusesoc/${VERSION}
#%Module
prepend-path PATH /tools/eda/fusesoc/${VERSION}/bin
prepend-path PYTHONPATH /tools/eda/fusesoc/${VERSION}
EOF
