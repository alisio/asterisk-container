FROM centos:latest
MAINTAINER Alisio Meneses "alisio.meneses@gmail.com"
RUN yum -y update
RUN yum -y install epel-release wget vim net-tools rsync
WORKDIR /etc/yum.repos.d/
RUN wget https://ast.tucny.com/repo/tucny-asterisk.repo
RUN rpm --import https://ast.tucny.com/repo/RPM-GPG-KEY-dtucny
