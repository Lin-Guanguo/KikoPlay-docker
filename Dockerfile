FROM ubuntu:22.04

RUN apt update
RUN apt install -yy build-essential qtbase5-dev qt5-qmake libmpv-dev zlib1g-dev
RUN git clone --depth 1 --branch 0.9.3 git@github.com:KikoPlayProject/KikoPlay.git /build
WORKDIR /build
RUN qmake build.pro
RUN make -j 16