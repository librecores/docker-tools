# The MIT License
#
#  Copyright (c) 2016, Oleg Nenashev
#
#  Permission is hereby granted, free of charge, to any person obtaining a copy
#  of this software and associated documentation files (the "Software"), to deal
#  in the Software without restriction, including without limitation the rights
#  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
#  copies of the Software, and to permit persons to whom the Software is
#  furnished to do so, subject to the following conditions:
#
#  The above copyright notice and this permission notice shall be included in
#  all copies or substantial portions of the Software.
#
#  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
#  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
#  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
#  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
#  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
#  THE SOFTWARE.

FROM ubuntu:16.04
MAINTAINER Oleg Nenashev <o.v.nenashev@gmail.com>
LABEL Description="The image offers FuseSoC and Icarus Verilog" Vendor="Oleg Nenashev" Version="0.1"

# Parameters
ARG ZLIB_VERSION=1.2.8
ARG ICARUS_VERILOG_VERSION=10_1
ARG FUSESOC_VERSION=1.5

ENV HOME /fusesoc

RUN apt-get update
RUN apt-get install -y python2.7-dev libyaml-dev libyaml-dev
RUN apt-get install -y python-pip
RUN apt-get install -y python-yaml
RUN apt-get install -y git

# Install FuseSoC
RUN pip install fusesoc==${FUSESOC_VERSION}
RUN fusesoc init -y
RUN fusesoc list-systems
RUN fusesoc list-cores
RUN fusesoc update

# Install ZLIB for Icarus
RUN apt-get install -y wget
WORKDIR /zlib
RUN wget http://zlib.net/zlib-${ZLIB_VERSION}.tar.gz && tar zxf zlib-${ZLIB_VERSION}.tar.gz
WORKDIR /zlib/zlib-${ZLIB_VERSION}
RUN ./configure && make
RUN make install

# Install Icarus Verilog
RUN apt-get install -y libelf-dev autoconf gperf bison flex build-essential
RUN git clone https://github.com/steveicarus/iverilog.git
WORKDIR iverilog
RUN git checkout v${ICARUS_VERILOG_VERSION}
RUN sh autoconf.sh
RUN ./configure
RUN make
RUN make install

# Allow accessing FuseSoC cache to all users
RUN chmod 777 /fusesoc/.cache

WORKDIR $HOME
