#! /bin/bash -eux
echo "Running FuseSoC in $HOME"

# Init data folders
mkdir /fusesoc/build
mkdir /fusesoc/cache

#TODO: Make the behavior flexible - source repo should be modifyable
cd /fusesoc
git clone https://github.com/openrisc/orpsoc-cores.git
if [ -d "orpsoc-cores/cores" ] ; then
  echo "INFO: Located orpsoc-cores/cores directory"
else
  echo "ERROR: orpsoc-cores/cores directory has not been located"
  exit 1
fi

# We Initialize FuseSoC within the user environment. Otherwise there are conflicts
# TODO: Ideally it should be moved to the build stage
fusesoc init -y
exec "$@"