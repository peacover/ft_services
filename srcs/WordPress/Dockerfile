FROM alpine:3.11
RUN apk update
RUN apk --update add nginx openssh-server openrc vim openssl sudo tar

COPY default.conf /etc/nginx/conf.d

RUN apk add lighttpd php7-common php7-iconv php7-json php7-gd php7-curl php7-xml php7-mysqli\
 php7-imap php7-cgi fcgi php7-pdo php7-pdo_mysql php7-soap php7-xmlrpc php7-posix php7-mcrypt\
 php7-gettext php7-ldap php7-ctype php7-dom php7 php7-fpm php7-opcache phpmyadmin php-mbstring php-gettext

RUN wget https://wordpress.org/latest.tar.gz
RUN tar -xvf latest.tar.gz && rm latest.tar.gz && cp -rf wordpress /var/www/ && rm -rf wordpress
COPY wp-config.php /var/www/wordpress

COPY file.sh /
COPY livenessprobe.sh /

CMD ["sh", "/file.sh"]