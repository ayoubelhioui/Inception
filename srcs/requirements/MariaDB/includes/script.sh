#! /bin/sh
# starts the MySQL service
service mysql start 

# Create a database with the name specified in the environment variable (.env)
mysql -e "CREATE DATABASE IF NOT EXISTS DB ;"

# create a user with the username and password specified in the environment variables (.env)
mysql -e "CREATE USER IF NOT EXISTS 'AYOUB'@'%' IDENTIFIED BY '123456789' ;"

# grant all privileges to the user on the database.
mysql -e "GRANT ALL PRIVILEGES ON DB.* TO 'AYOUB'@'%' ;"

# change the password of the root user to the value specified in the environment variable.
mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '123456789' ;"

# Restart the MySQL service
kill $(cat /var/run/mysqld/mysqld.pid)
mysqld