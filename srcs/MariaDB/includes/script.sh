#!/bin/sh

mysql_install_db

mkdir -p /run/mysqld
chown mysql:mysql /run/mysqld
service mysql start
mysql << EOF
CREATE DATABASE IF NOT EXISTS mydb;
CREATE USER 'ayoub'@'%' IDENTIFIED BY '123456789';
GRANT ALL PRIVILEGES ON mydb.* TO 'ayoub'@'%';
FLUSH PRIVILEGES;
exit
EOF
service mysql stop
mysqld -user=ayoub