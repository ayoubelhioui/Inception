#!/bin/bash

service mysql start & service php7.3-fpm start & nginx -g "daemon off;" \
echo "CREATE DATABASE IF NOT EXISTS test ;" > db1.sql \
echo "CREATE USER IF NOT EXISTS 'ayoub'@'%' IDENTIFIED BY '123456789' ;" >> db1.sql \
echo "GRANT ALL PRIVILEGES ON test.* TO 'ayoub'@'%' ;" >> db1.sql \
echo "ALTER USER 'root'@'localhost' IDENTIFIED BY '12345' ;" >> db1.sql \
echo "FLUSH PRIVILEGES;" >> db1.sql \

sed -i -r "s/database_name_here/test/1"   /var/www/html/wp-config-sample.php \
sed -i -r "s/username_here/ayoub/1"  /var/www/html/wp-config-sample.php \
sed -i -r "s/password_here/123456789/1"    /var/www/html/wp-config-sample.php \
mysql < db1.sql