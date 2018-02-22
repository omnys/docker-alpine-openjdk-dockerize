FROM openjdk:8u151-jdk-alpine3.7

MAINTAINER Omnys srl <sistemi@omnys.com>

LABEL openjdk.version=8u151

RUN apk update && \
    apk add --upgrade wget curl

ENV DOCKERIZE_VERSION v0.6.0
RUN wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && tar -C /usr/local/bin -xzvf dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && rm dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz
