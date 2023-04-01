#!/bin/sh

mysql_install_db
service mariadb start
mysql_secure_installation << EOF
mkdir /run/mysqld
chmod 777 /run/mysqld/
chown mysql:mysql /run/mysqld/



Y
Y
www-data
www-data
Y
n
Y
Y
EOF
mysql  << EOF
CREATE DATABASE IF NOT EXISTS mydb;
CREATE USER 'ayoub'@'%' IDENTIFIED BY '123456789';
GRANT ALL PRIVILEGES ON mydb.* TO 'ayoub'@'%';
FLUSH PRIVILEGES;
exit
EOF
service mariadb stop
mysqld -user=ayoub