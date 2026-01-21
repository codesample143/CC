FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y build-essential git cmake libboost-all-dev && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /opt/CC
COPY . /opt/CC

RUN mkdir build
WORKDIR /opt/CC/build
RUN cmake .. && make

CMD ["./CC"]
