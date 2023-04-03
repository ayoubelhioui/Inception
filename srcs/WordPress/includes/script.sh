#!/bin/bash
mkdir -p /var/www/html
cd /var/www/html
wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp
wp core download --allow-root

tail -f
#/usr/sbin/php-fpm7.3 -F -R

