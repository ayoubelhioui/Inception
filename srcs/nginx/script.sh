#!/bin/bash

service mysql start
service php7.3-fpm start
nginx -g "daemon off;"

touch helloWorld
# Create database and user
echo "CREATE DATABASE IF NOT EXISTS test ;
CREATE USER IF NOT EXISTS 'ayoub'@'%' IDENTIFIED BY '123456789' ;
GRANT ALL PRIVILEGES ON test.* TO 'ayoub'@'%' ;
ALTER USER 'root'@'localhost' IDENTIFIED BY '12345' ;
FLUSH PRIVILEGES;" > db1.sql

mysql < db1.sql

# Copy wp-config-sample.php to wp-config.php
chown -R www-data:www-data /var/www/html/
cp /var/www/html/wp-config-sample.php /var/www/html/wp-config.php

# Modify wp-config.php with database credentials
sed -i "s/define('DB_NAME', 'database_name_here');/define('DB_NAME', 'test');/" /var/www/html/wp-config.php
sed -i "s/define('DB_USER', 'username_here');/define('DB_USER', 'ayoub');/" /var/www/html/wp-config.php
sed -i "s/define('DB_PASSWORD', 'password_here');/define('DB_PASSWORD', '123456789');/" /var/www/html/wp-config.php
# Update WordPress config file

#sed -i -r "s/database_name_here/test/1" /var/www/html/wp-config-sample.php
#sed -i -r "s/username_here/ayoub/1" /var/www/html/wp-config-sample.php
#sed -i -r "s/password_here/123456789/1" /var/www/html/wp-config-sample.php