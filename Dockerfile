FROM ubuntu:20.04

MAINTAINER azaz0101

# Eev
ENV TERM screen-256color
ENV DEBIAN_FRONTEND noninteractive

# Update apt
RUN dpkg --add-architecture i386 && \
    apt update -y && apt upgrade -y && \
    apt install -y \
    build-essential \ 
    libc6-dbg:i386 \
    libc6-dbg \
    libssl-dev \
    libffi-dev \
    gdb-multiarch \
    gcc-multilib \
    git \
    gawk \
    wget curl \
    vim \
    python3-dev \
    python-dev \
    python3-pip \
    net-tools \
    strace ltrace \
    tmux \
    nasm \
    netcat \
    ruby \
    ruby-dev

# set tmux config
RUN cd /root && wget https://raw.githubusercontent.com/kia280/MyEnv/master/tmux/.tmux.conf

WORKDIR /root

CMD ["/bin/bash"]
