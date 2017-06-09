FROM ubuntu:16.04
MAINTAINER glg8505@gmail.com

ENV DEBIAN_FRONTEND noninteractive

# Install dependencies
RUN apt-get update && \
    apt-get install -y youtube-dl megatools

# Update youtube-dl
RUN youtube-dl -U 
    
# Create download folder
RUN mkdir /dl

RUN cd /dl && \
    youtube-dl https://www.youtube.com/watch?v=zM-MJwJt5Q4

RUN megacopy --no-progress -u glg8505@gmail.com -p Togtojononna1* --local /dl --remote /Root/dl
