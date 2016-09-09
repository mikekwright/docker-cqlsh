FROM ubuntu:16.10
MAINTAINER mkwright@gmail.com

RUN apt update && \
    apt install -y python python-pip curl && \
    apt clean && \
    rm -rf /tmp/* /var/lib/apt/lists/* /var/tmp/*

ENV CQLSH_VERSION 4.1.1
RUN pip install cqlsh==$CQLSH_VERSION

ENTRYPOINT ["cqlsh"]
