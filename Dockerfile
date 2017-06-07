FROM ubuntu:16.04
MAINTAINER glg8505@gmail.com

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y curl youtube-dl

#RUN curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl && \
#     chmod a+rx /usr/local/bin/youtube-dl
     
RUN youtube-dl -U

RUN mkdir /dl

RUN cd /dl && youtube-dl https://www.youtube.com/watch?v=zM-MJwJt5Q4
