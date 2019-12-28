#! /bin/bash

sed -i 's/127.0.0.1/0.0.0.0/'  /etc/mysql/my.cnf
chown -R mysql:mysql /var/lib/mysql /var/run/mysqld
echo 'ServerName localhost:80' >> /etc/apache2/apache2.conf
echo "xdebug.remote_enable=1" >> /etc/php5/apache2/php.ini 
echo "xdebug.idekey='PHPSTORM'" >> /etc/php5/apache2/php.ini 
echo "xdebug.remote_connect_back=0" >> /etc/php5/apache2/php.ini 
echo "xdebug.remote_host=172.21.135.246" >> /etc/php5/apache2/php.ini 
service apache2 start
service mysql start



