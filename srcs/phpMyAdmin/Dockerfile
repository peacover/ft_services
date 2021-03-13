FROM alpine:3.11
RUN apk update
RUN apk --update add nginx openssh-server openrc vim openssl sudo tar

COPY default.conf /etc/nginx/conf.d

# RUN apk add mariadb mariadb-common mariadb-client
RUN apk add lighttpd php7-common php7-iconv php7-json php7-gd php7-curl php7-xml php7-mysqli\
 php7-imap php7-cgi fcgi php7-pdo php7-pdo_mysql php7-soap php7-xmlrpc php7-posix php7-mcrypt\
 php7-gettext php7-ldap php7-ctype php7-dom php7 php7-fpm php7-opcache phpmyadmin php-mbstring php-gettext

# COPY phpmyadmin.sql ./

RUN wget https://files.directadmin.com/services/all/phpMyAdmin/phpMyAdmin-5.0.4-all-languages.tar.gz &&\
tar -xvf phpMyAdmin-5.0.4-all-languages.tar.gz && mv phpMyAdmin-5.0.4-all-languages /var/www/phpmyadmin\
&& rm phpMyAdmin-5.0.4-all-languages.tar.gz
RUN mkdir /var/www/phpmyadmin/tmp
RUN chmod -R 777 /var/www/phpmyadmin/tmp
COPY config.inc.php /var/www/phpmyadmin

COPY file.sh /

CMD ["sh", "/file.sh"]