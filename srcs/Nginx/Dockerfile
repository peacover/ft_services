FROM alpine:3.11
RUN apk update
RUN apk --update add nginx openssh-server openrc vim openssl openssh

COPY default.conf /etc/nginx/conf.d
COPY key_pub.crt /etc/ssl/certs/key_pub.crt
COPY key_priv.key /etc/ssl/private/key_priv.key
COPY file.sh /

CMD ["sh", "/file.sh"]