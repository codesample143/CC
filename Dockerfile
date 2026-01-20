FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y build-essential git cmake

RUN git clone https://github.com/codesample143/CC.git /opt/CC

WORKDIR /opt/CC

