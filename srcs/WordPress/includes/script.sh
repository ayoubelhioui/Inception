#!/bin/bash
mkdir -p /var/www/html
mkdir -p /run/php
chown www-data:www-data /run/php
cd /var/www/html
wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp
wp core download --allow-root
rm -rf wp-config-sample.php
mv /wp-config.php wp-config.php
wp core install --url="localhost" --title="Example" --admin_user="admin" --admin_password="password" --admin_email="admin@example.com" --allow-root
/usr/sbin/php-fpm7.3 -F