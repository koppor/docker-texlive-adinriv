FROM ubuntu:16.04
MAINTAINER adin

ENV HOME /root
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y wget

ADD https://raw.githubusercontent.com/scottkosty/install-tl-ubuntu/master/install-tl-ubuntu install-tl-ubuntu
RUN chmod +x install-tl-ubuntu

RUN ./install-tl-ubuntu

RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* \
           /tmp/* \
           /var/tmp/*

ENV PATH /opt/texbin:$PATH

RUN tlmgr update --all

VOLUME /var/texlive

WORKDIR /var/texlive

