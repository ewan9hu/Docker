#! /bin/bash

sed -i 's/127.0.0.1/0.0.0.0/' /etc/mysql/mysql.conf.d/mysqld.cnf
chown -R mysql:mysql /var/lib/mysql /var/run/mysqld
service mysql start
mysql -uroot -e "grant all privileges on *.* to 'root'@'%' identified WITH mysql_native_password by 'li9hu';"
mysql -uroot -e "grant all privileges on *.* to 'root'@'localhost' identified WITH mysql_native_password by 'li9hu';"
service mysql restart
echo 'ServerName localhost:80' >> /etc/apache2/apache2.conf
echo "xdebug.remote_enable=1" >> /etc/php/7.2/apache2/php.ini 
echo "xdebug.idekey='PHPSTORM'" >> /etc/php/7.2/apache2/php.ini 
echo "xdebug.remote_connect_back=0" >> /etc/php/7.2/apache2/php.ini
echo "xdebug.remote_host=172.19.33.166" >> /etc/php/7.2/apache2/php.ini
service apache2 start



