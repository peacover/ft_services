FROM alpine:3.11
RUN apk update 
RUN apk add bash vsftpd openrc vim openssl

COPY vsftpd.crt /etc/ssl/certs
COPY vsftpd.key /etc/ssl/private
COPY vsftpd.conf /etc/vsftpd/vsftpd.conf
COPY file.sh /

CMD ["sh", "/file.sh"]
# openssl req -newkey rsa:2048 -x509 -days 365 -sha256 -nodes -keyout /etc/ssl/private/pure-ftpd.pem -out /etc/ssl/private/pure-ftpd.pem
# https://www.tecmint.com/secure-vsftpd-using-ssl-tls-on-centos/