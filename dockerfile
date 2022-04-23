FROM ubuntu:latest

RUN apt-get update && \
    yes | unminimize && \
    ln -fs /usr/share/zoneinfo/America/Anchorage /etc/localtime && \
    apt-get install -y \
        # Linux Utilities
        curl wget gnupg openssh-client locales man-db vim nano \
        # C++ Core Packages
        g++ gdb make cmake git \
        # C++ Libraries
        libboost-dev libsfml-dev libfltk1.3-dev catch2 doctest-dev && \
    locale-gen en_US.UTF-8 && \
    useradd -m developer

# Make volume to store everything on
RUN mkdir /data

VOLUME /data

USER developer

WORKDIR /home/developer

ENV SHELL=/bin/bash

CMD [ "bash" ]