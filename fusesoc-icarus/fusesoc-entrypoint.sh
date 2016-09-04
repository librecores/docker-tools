#! /bin/bash -eu
echo "Running FuseSoC in $HOME"

# Init data folders
mkdir /fusesoc/build
mkdir /fusesoc/cache

#TODO: Make the behavior flexible - source repo should be modifyable
cd /fusesoc
git clone https://github.com/openrisc/orpsoc-cores.git

# We Initialize FuseSoC within the user environment. Otherwise there are conflicts
# TODO: Ideally it should be moved to the build stage
fusesoc init -y
exec "$@"