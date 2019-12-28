FROM ubuntu:trusty
MAINTAINER li9hu <ewan9hu@gmail.com>

ENV DEBIAN_FRONTEND=noninteractive
COPY ./start.sh /start.sh
RUN sed -i "s/archive.ubuntu.com/mirrors.aliyun.com/g" /etc/apt/sources.list && \
	sed -i "s/security.ubuntu.com/mirrors.aliyun.com/g" /etc/apt/sources.list && \
	bash -c "debconf-set-selections <<< 'mysql-server mysql-server/root_password password li9hu'" && \
	bash -c "debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password li9hu'" && \
    apt-get clean  &&  apt-get update && \
    apt-get  install -y --no-install-recommends wget vim curl mysql-server apache2 php5 php5-cli php5-gd  php5-mysql php5-xdebug php5-curl libapache2-mod-php5  && \
    rm -rf /var/cahe/apk* && rm -rf /var/lib/apt/lists/* && apt-get autoremove && \
    chmod +x /start.sh

CMD /start.sh && /bin/bash


EXPOSE 80
