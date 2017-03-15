FROM ubuntu:latest
MAINTAINER adin

ENV HOME /root
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y wget git

RUN git clone https://github.com/scottkosty/install-tl-ubuntu.git

RUN chmod +x ./install-tl-ubuntu/install-tl-ubuntu

RUN ./install-tl-ubuntu/install-tl-ubuntu

RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* \
           /tmp/* \
           /var/tmp/*

ENV PATH /opt/texbin:$PATH

RUN tlmgr update --all

VOLUME /var/texlive

WORKDIR /var/texlive

