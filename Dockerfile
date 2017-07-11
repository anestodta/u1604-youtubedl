FROM ubuntu:16.04
MAINTAINER glg8505@gmail.com

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -qq && apt-get install -qqy wget curl megatools python
    
RUN curl --silent -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
RUN chmod a+rx /usr/local/bin/youtube-dl

WORKDIR /dl

ADD dlfile ./dlfile

RUN /bin/bash ./dlfile ; \
    megacopy --no-progress -u glg8505@gmail.com -p Togtojononna1* --local /dl --remote /Root/dl
