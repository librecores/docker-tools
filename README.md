# LibreCores Tools Docker Images

This repository contains the information about tools that are
installed in the LibreCores CI environment. Beside the tool
information we provide the files to reproduce the build or
installation of tools using [docker](http://docker.io).

**Why set up your own tools environment?**

Setting up your own tools environment using our docker images can be
useful as a fast way of getting your environment set up. Beside that
it can be useful to reproduce problems with your build in LibreCores
CI.

## How to

In the following we will briefly introduce to you how to setup your
tools environment on a local path called `/tools`. The idea is
basically that you run the docker images for the tools that you need
to be installed. For example you would install FuseSoC using:

    docker run librecores/tools-fusesoc -v /tools:/tools

This will run the GCC build for the `latest` tag and map the host
machine folder `/tools` to the docker folder `/tools`.

You can select another tag, e.g.,

    docker run librecores/fusesoc:1.6 -v /tools:/tools

Finally, each tool can have extra parameters that you find with the
tool information below. In the case of the RISC-V cross compiler for
example the build jobs can be set:

    docker run librecores/tools-riscv-gcc:20170209 -v /tools:/tools -e JOBS=-j16

## Environment Modules

We use [Environment Modules](http://modules.sourceforge.net/) to
manage the environment with multiple concurrent versions of tools.

Once compiled and installed you need to source the init script for it:

    source /tools/Modules/3.2.10/init/bash

After that you can load the environment for each of the tools, e.g.:

    module load eda/fusesoc/1.6

sets the environment by prepending the correct folders to `PATH` and
`PYTHONPATH`.

## Available tools

#### Environment Modules

Docker name: `tools-modules`

Tags:

| Name | Description | Path |
| ---- | ----------- | ---- |
| `3.2.10`, `latest` | 3.2.10 release | `Modules/3.2.10` |

### EDA tools

#### FuseSoC

Docker name: `tools-fusesoc`

Tags:

| Name | Description | Path |
| ---- | ----------- | ---- |
| `1.6`, `latest` | 1.6 release | `eda/fusesoc/1.6/`

### Cross compilers

#### RISC-V GCC crosscompiler

Docker name: `tools-riscv-gcc` 

Tags:

| Name | Description | Path |
| ---- | ----------- | ---- |
| `20170209`, `latest` | Snapshot from Feb 9, 2017 | `compilers/riscv/20170209-ff21e26/`

Parameters:

| Name | Description | Default |
| ---- | ----------- | ------- |
| `JOBS` | Parallel build jobs | `-j8` |

## Contribute

If you want a tool installed in the environment, please create a pull
request to this repository.

