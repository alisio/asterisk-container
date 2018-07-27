# asterisk-container
Container docker para asterisk
Docker file para criar container com asterisk 13 baseado na imagem do Centos 7. Os pacotes são instalados a partir do repositório Tucny.com

Módulos incluídos:
* Asterisk 13
* Módulo chan_sip

Clonar:

```sh
$ git clone https://git.serpro/81817002368/asterisk-container.git
```

Criar imagem:

```sh
$ cd asterisk-container
$ docker build -t asterisk-serpro .
```

Executar:

```sh
$ sudo docker run -d --restart unless-stopped --name asterisk01 --network host asterisk-serpro
```

Conectar:

```sh
$ sudo docker exec -t -i asterisk01 /bin/bash
```
