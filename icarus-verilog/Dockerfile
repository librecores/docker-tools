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
LABEL maintainer="stefan@wallentowitz.de"
LABEL description="Icarus Verilog"
LABEL vendor="LibreCores"

ARG VERSION=v10_1
ARG JOBS=-j8

RUN git clone http://github.com/steveicarus/iverilog.git
WORKDIR iverilog
RUN git checkout ${VERSION}

ENV JOBS=${JOBS}
ENV VERSION=${VERSION}
ENV IVERILOG_BASE=/tools/eda/iverilog
ENV IVERILOG_MODULEFILES=/tools/modulefiles/eda/iverilog

COPY build.sh /tmp/iverilog

ENTRYPOINT ["./build.sh"]