#!/bin/sh

mysql_install_db

mkdir -p /run/mysqld
chown mysql:mysql /run/mysqld
service mysql start
mysql << EOF
CREATE DATABASE IF NOT EXISTS $DATABASE_NAME;
CREATE USER '$USERNAME'@'%' IDENTIFIED BY '$PASSWORD';
GRANT ALL PRIVILEGES ON $DATABASE_NAME.* TO '$USERNAME'@'%';
FLUSH PRIVILEGES;
exit
EOF
service mysql stop
exec mysqld