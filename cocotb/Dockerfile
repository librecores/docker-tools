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
LABEL maintainer  Stefan Wallentowitz <stefan@wallentowitz.de>
LABEL description "cocotb"

ARG VERSION=5d6aee2

WORKDIR /tmp
RUN git clone https://github.com/potentialventures/cocotb
WORKDIR cocotb
RUN git checkout ${VERSION}

ENV VERSION=${VERSION}
ENV COCOTB_BASE=/tools/eda/cocotb
ENV COCOTB_MODULEFILES=/tools/modulefiles/eda/cocotb

COPY install.sh /tmp/

ENTRYPOINT ["/tmp/install.sh"]