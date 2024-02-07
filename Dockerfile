FROM centos:7

LABEL maintainer="42@wolketechnik.ar"

ENV REFRESHED_AT 2024-02-07

RUN yum check-update && yum update -y && yum clean all

RUN mkdir -p /opt/server

ENV HOME /opt/server
WORKDIR /opt/server

VOLUME ["/etc", "/var/log", "/home", "/root"]
