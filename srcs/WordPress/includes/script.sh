#!/bin/bash
mdkir -p /var/www/html
cd /var/www/html
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp
wp core download

