#!/bin/bash

service mysql start 

mysql -e "CREATE DATABASE IF NOT EXISTS $DATABASE_NAME ;"

mysql -e "CREATE USER IF NOT EXISTS '$USERNAME'@'%' IDENTIFIED BY '$PASSWORD' ;"

mysql -e "GRANT ALL PRIVILEGES ON $DATABASE_NAME.* TO '$USERNAME'@'%' ;"

kill $(cat /var/run/mysqld/mysqld.pid)
mysqld