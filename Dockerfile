FROM ubuntu:16.10
MAINTAINER mkwright@gmail.com

RUN apt update && \
    apt install -y python python-pip curl && \
    apt clean && \
    rm -rf /tmp/* /var/lib/apt/lists/* /var/tmp/*

ENV CQLSH_VERSION 5.0.3
RUN pip install cqlsh==5.0.3

ENTRYPOINT ["cqlsh"]
