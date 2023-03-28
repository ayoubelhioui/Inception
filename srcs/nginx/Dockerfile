FROM debian:buster
RUN apt-get update && apt-get install -y nginx vim
RUN mkdir -p /etc/nginx/ssl
RUN apt install openssl -y
RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=MO//L=BN/O=1337/OU=Student/CN=ael-hiou.42.fr/UID=ael-hiou"
RUN mkdir -p /var/run/nginx
CMD ["nginx", "-g", "daemon off;"]