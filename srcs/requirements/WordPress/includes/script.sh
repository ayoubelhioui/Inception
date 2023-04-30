#!/bin/bash
mkdir -p /var/www/html
mkdir -p /run/php
chown www-data:www-data /run/php
cd /var/www/html
wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp
wp core download --allow-root
mv /var/www/html/wp-config-sample.php /var/www/html/wp-config.php
sed -i "s/username_here/$USERNAME/g" wp-config.php
sed -i "s/password_here/$PASSWORD/g" wp-config.php
sed -i "s/localhost/$DATABASE_NAME/g" wp-config.php
sed -i "s/database_name_here/$DATABASE_NAME/g" wp-config.php
wp core install --url="localhost" --title="Example" --admin_user=$WP_ADMIN_NAME --admin_password=$WP_ADMIN_PASS --admin_email=$WP_ADMIN_EMAIL --allow-root
wp user create $WP_USER_NAME $WP_USER_EMAIL --role=author --user_pass=$WP_USER_PASS --allow-root 
exec /usr/sbin/php-fpm7.3 -F
