FROM centos:6

LABEL maintainer="7of9@yungasdevops.com"

ENV REFRESHED_AT 2020-03-22

RUN yum update -y && yum clean all

RUN mkdir -p /opt/server

ENV HOME /opt/server
WORKDIR /opt/server

VOLUME ["/etc", "/var/log", "/home", "/root"]
