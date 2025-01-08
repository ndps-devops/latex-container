FROM ubuntu:24.04

LABEL maintainer="Ndps"
LABEL version="2.0"
LABEL description="A simple Latex container."

ENV DEBIAN_FRONTEND=noninteractive
ENV PYTHONUNBUFFERED=1

ADD dpkg-nodoc.conf /etc/dpkg/dpkg.cfg.d/01-nodoc

RUN apt-get -y update \
 && apt-get -y upgrade \
 && apt-get -y install \
        software-properties-common \
 && apt-get -y install \
        git \
        wget \
        graphviz \
        python3-pip \
        python3-pygments \
        texlive-full \
 && apt-get -y clean \
 && rm -rf /var/lib/apt/lists/*

RUN luaotfload-tool --update

VOLUME ["/data"]
WORKDIR /data

CMD ["sh", "-c", "lualatex -interaction=nonstopmode -halt-on-error -output-directory=/data /data/main.tex"]
