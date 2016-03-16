FROM ubuntu:14.04

MAINTAINER German Schnyder <gschnyder@gmail.com>

ENV DEBIAN_FRONTEND noninteractive 
ENV SHELL /bin/bash

RUN apt-get update

ADD zookeepercli.deb ./
RUN dpkg -i zookeepercli.deb && apt-get install -f