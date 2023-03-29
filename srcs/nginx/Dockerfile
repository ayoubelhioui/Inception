FROM debian:buster
WORKDIR /var/www/html
RUN apt-get update && apt-get install -y nginx mariadb-server php-fpm wget vim
RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp
RUN wp core download --allow-root
RUN mkdir -p /etc/nginx/ssl
RUN apt install openssl -y
EXPOSE 443
RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=MO//L=BN/O=1337/OU=Student/CN=ael-hiou.42.fr/UID=ael-hiou"
COPY file.conf /etc/nginx/conf.d/file.conf
RUN mkdir -p /var/run/nginx
CMD ["nginx", "-g", "daemon off;"]