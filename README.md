# asterisk-container
Asterisk 13 docker container
Docker file to create as asterisk 13, Centos 7 Image. The asterisk is installed from the packages made available by Tucny.com

It includes:
* Asterisk 13
* Sip channel driver enabled

Clone it:

```sh
$ git clone https://github.com/alisio/asterisk-container.git
```

Build it:

```sh
$ cd asterisk-container
$ build -t='asterisk13-centos7' .
```

Run it:

```sh
# docker run --restart=always --name asterisk01 -d -p 5060-5065:5060-5065/tcp -p 10000-10500/udp asterisk13-centos7
```

Connect to it:

```sh
# docker exec -t -i asterisk01 /bin/bash
```
