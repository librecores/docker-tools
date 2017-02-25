# The MIT License
#
#  Copyright (c) 2017, Oleg Nenashev, Stefan Wallentowitz
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

FROM librecores/toolsbuild-base:latest
LABEL Maintainer  Stefan Wallentowitz <stefan@wallentowitz.de>
LABEL Description "Yosys synthesis"

ARG VERSION=0.7
ARG JOBS=-j8

RUN apt-get install -y python3 gawk pkg-config tcl-dev libreadline-dev
RUN apt-get install -y libffi-dev mercurial

RUN git clone https://github.com/cliffordwolf/yosys.git
WORKDIR yosys
RUN git checkout yosys-${VERSION}

ENV JOBS=${JOBS}
ENV VERSION=${VERSION}
ENV YOSYS_BASE=/tools/eda/yosys
ENV YOSYS_MODULEFILES=/tools/modulefiles/eda/yosys

COPY build.sh /tmp/yosys

ENTRYPOINT ["./build.sh"]