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

FROM ubuntu:16.04
LABEL maintaine="stefan@wallentowitz.de"
LABEL description="Environment Modules"
LABEL vendor="LibreCores"

USER root

ARG VERSION=3.2.10

VOLUME /tools

RUN apt-get update
RUN apt-get install -y git build-essential automake autoconf tcl-dev

WORKDIR /tmp
RUN git clone https://git.code.sf.net/p/modules/git modules
WORKDIR modules
RUN git checkout modules-`echo ${VERSION} | sed 's/\./-/g'`

ENV VERSION=${VERSION}

COPY build.sh /tmp/modules

ENTRYPOINT ["./build.sh"]