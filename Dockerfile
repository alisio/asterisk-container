FROM   centos:7
LABEL   maintainer="Alisio Meneses alisio.meneses@gmail.com"
LABEL   version="0.9-beta"
RUN   yum -y install epel-release
RUN   yum -y update
COPY  ./files/etc/yum.repos.d /etc/yum.repos.d
RUN   rpm --import https://ast.tucny.com/repo/RPM-GPG-KEY-dtucny
RUN   rpm --import http://packages.irontec.com/public.key
RUN   yum -y --nogpgcheck install \
        asterisk \
        asterisk-oss \
        asterisk-sip \
        asterisk-sounds-core-en-alaw \
        mlocate \
        net-tools \
        ngrep \
        rsync \
        sngrep \
        wget \
        vim
#COPY  ./files/etc/asterisk/sip.conf /etc/asterisk/sip.conf
COPY  ./files/etc/asterisk/ /etc/asterisk/
VOLUME  /etc/asterisk
EXPOSE  5038/tcp
EXPOSE  5060/udp
EXPOSE  8088/tcp
EXPOSE  10000-10100/udp
WORKDIR /etc/asterisk
ENTRYPOINT  ["/usr/sbin/asterisk", "-vvvvvvv"]
