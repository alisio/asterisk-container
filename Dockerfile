FROM centos:latest
LABEL maintainer="Alisio Meneses alisio.meneses@gmail.com"
LABEL version="0.0.1-beta"
LABEL vendor="SERPRO"
ENV container docker
RUN yum -y install epel-release
RUN yum -y update
WORKDIR /etc/yum.repos.d/
COPY tucny-asterisk.repo /etc/yum.repos.d/
RUN rpm --import https://ast.tucny.com/repo/RPM-GPG-KEY-dtucny
RUN yum -y --nogpgcheck install \
      asterisk \
      asterisk-sip \
      net-tools \
      rsync \
      wget \
      vim
EXPOSE  5060/udp
EXPOSE  10000-20000/udp
ENTRYPOINT ["/usr/sbin/asterisk", "-vvvvvvv"]
