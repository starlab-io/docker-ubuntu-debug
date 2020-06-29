FROM starlabio/ubuntu-native-build:26
MAINTAINER Kelli Little <kelli.little@starlab.io>

RUN apt update
RUN apt install -y gdb strace ltrace valgrind vim tree \
    tcpdump dnsutils

ADD .vimrc ~/

RUN cargo install ripgrep
