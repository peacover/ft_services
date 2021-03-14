FROM alpine:3.11
RUN apk update
RUN apk add bash vim wget openrc influxdb libc6-compat

RUN wget https://dl.influxdata.com/telegraf/releases/telegraf-1.17.0_linux_amd64.tar.gz &&\
tar xf telegraf-1.17.0_linux_amd64.tar.gz && rm telegraf-1.17.0_linux_amd64.tar.gz

COPY telegraf.conf telegraf-1.17.0/usr/bin/
# COPY influxdb.conf etc/
COPY file.sh /
COPY livenessprobe.sh /
CMD ["sh", "/file.sh"]