FROM debian:buster
RUN apt-get update
RUN apt-get install mariadb-server -y
COPY includes/50-server.conf /etc/mysql/mariadb.conf.d/50-server.cnf
EXPOSE 3306
CMD ["tail", "-f"]