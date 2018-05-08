FROM centos:latest
MAINTAINER Alisio Meneses "alisio.meneses@gmail.com"
ENV container docker
RUN yum -y update
RUN yum -y install epel-release wget vim net-tools rsync
WORKDIR /etc/yum.repos.d/
COPY tucny-asterisk.repo /etc/yum.repos.d/
RUN rpm --import https://ast.tucny.com/repo/RPM-GPG-KEY-dtucny
RUN yum -y install asterisk-sip
VOLUME [ "/sys/fs/cgroup" ]
CMD ["/usr/sbin/asterisk", "-vvvvvvv"]
