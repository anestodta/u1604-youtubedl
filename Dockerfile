FROM ubuntu:16.04
MAINTAINER glg8505@gmail.com

ENV DEBIAN_FRONTEND noninteractive

# Install dependencies
RUN apt-get update -qq && apt-get install -qqy \
    wget \
    curl \
    youtube-dl \
    megatools

WORKDIR /dl

ADD dlfile ./dlfile

RUN cd /dl && \
    /bin/bash ./dlfile

RUN megacopy --no-progress -u glg8505@gmail.com -p Togtojononna1* --local /dl --remote /Root/dl
