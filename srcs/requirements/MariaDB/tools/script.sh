#!/bin/bash
service mysql start
mysql -e "CREATE DATABASE IF NOT EXISTS $DATABASE_NAME ;"
mysql -e "CREATE USER IF NOT EXISTS '$USERNAME'@'%' IDENTIFIED BY '$PASSWORD' ;"
mysql -e "GRANT ALL PRIVILEGES ON $DATABASE_NAME.* TO '$USERNAME'@'%' ;"
service mysql stop
sed -i "s/.*bind-address.*/bind-address = 0.0.0.0/" /etc/mysql/mariadb.conf.d/50-server.cnf
mysqld_safe