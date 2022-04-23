FROM ubuntu:latest

RUN apt-get update && \
    yes | unminimize && \
    ln -fs /usr/share/zoneinfo/America/Anchorage /etc/localtime && \
    apt-get install -y curl wget gnupg openssh-client locales man-db vim nano g++ gdb make cmake git libboost-dev libsfml-dev && \
    locale-gen en_US.UTF-8 && \
    useradd -m developer

RUN mkdir /data

VOLUME /data

USER developer

WORKDIR /home/developer

ENV SHELL=/bin/bash

CMD [ "bash" ]