#! /bin/bash -eu
echo "Running FuseSoC in $HOME"

# Init data folders
mkdir /fusesoc/build
mkdir /fusesoc/cores
mkdir /fusesoc/systems
mkdir /fusesoc/cache

# We Initialize FuseSoC within the user environment. Otherwise there are conflicts
# TODO: Ideally it should be moved to the build stage
fusesoc init -y
exec "$@"