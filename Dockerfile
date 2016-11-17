FROM openjdk:8u92-jdk-alpine

MAINTAINER Omnys srl <sistemi@omnys.com>

LABEL openjdk.version=8u92

RUN apk update && apk add --upgrade wget

ENV DOCKERIZE_VERSION v0.2.0
RUN wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && tar -C /usr/local/bin -xzvf dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz
