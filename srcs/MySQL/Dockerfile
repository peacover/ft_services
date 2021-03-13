FROM alpine:3.11
RUN apk update
RUN apk --update add openrc vim openssl
RUN apk add mariadb mariadb-common mariadb-client

COPY file.sh /
COPY phpmyadmin.sql ./
COPY wordpress.sql ./
COPY mariadb-server.cnf ./
RUN mv mariadb-server.cnf /etc/my.cnf.d
CMD ["sh", "/file.sh"]