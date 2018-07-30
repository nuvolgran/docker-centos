FROM centos:7
MAINTAINER Leo Luduena <lleo@linux.com>

ENV REFRESHED_AT 2018-07-30

RUN yum update -y

RUN mkdir -p /opt/centos

ENV HOME /opt/centos
WORKDIR /opt/centos

VOLUME ["/etc", "/var/log", "/home", "/root"]
