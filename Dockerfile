FROM ubuntu:16.04
MAINTAINER glg8505@gmail.com

ENV DEBIAN_FRONTEND noninteractive

# Install dependencies
RUN apt-get update && apt-get install -y wget youtube-dl

# Update youtube-dl
RUN youtube-dl -U

# Install dependency package
RUN cd /tmp &&
    wget http://ftp.us.debian.org/debian/pool/main/o/openssl/libssl1.1_1.1.0c-2_amd64.deb && \
    dpkg -i -y libssl1.1_1.1.0c-2_amd64.deb
    
# Install megatools package    
RUN cd /tmp &&
    wget http://ftp.us.debian.org/debian/pool/main/m/megatools/megatools_1.9.98-1_amd64.deb && \
    dpkg -i -y megatools_1.9.98-1_amd64.deb
    
RUN apt-get install -f -y    
    
# Create download folder
RUN mkdir /dl

RUN cd /dl && \
    youtube-dl https://www.youtube.com/watch?v=zM-MJwJt5Q4

RUN megacopy --no-progress -u glg8505@gmail.com -p Togtojononna1* --local /dl --remote /dl
