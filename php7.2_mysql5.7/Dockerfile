FROM ubuntu:latest
MAINTAINER li9hu <ewan9hu@gmail.com>

ENV DEBIAN_FRONTEND=noninteractive
COPY ./start.sh /start.sh
RUN sed -i "s/archive.ubuntu.com/mirrors.aliyun.com/g" /etc/apt/sources.list && \
	sed -i "s/security.ubuntu.com/mirrors.aliyun.com/g" /etc/apt/sources.list && \
    apt-get clean  &&  apt-get update && \
    apt-get  install -y --no-install-recommends wget vim curl mysql-server apache2 php php-zip php-gd  php-mysql php-xdebug php-curl libapache2-mod-php  && \
    rm -rf /var/cahe/apk* && rm -rf /var/lib/apt/lists/* && apt-get autoremove && \
    chmod +x /start.sh

CMD /start.sh && /bin/bash


EXPOSE 80
