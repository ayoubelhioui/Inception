#!/bin/sh

mysql_install_db
service mariadb start
mysql_secure_installation << EOF
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