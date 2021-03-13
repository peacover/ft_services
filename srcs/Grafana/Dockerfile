FROM alpine:3.11
RUN apk update
RUN apk add bash vim wget openrc influxdb libc6-compat

RUN wget https://dl.grafana.com/oss/release/grafana-7.3.2.linux-amd64.tar.gz && \
tar -zxvf grafana-7.3.2.linux-amd64.tar.gz && rm grafana-7.3.2.linux-amd64.tar.gz

COPY file.sh /
COPY livenessprobe.sh /

COPY grafana.db /grafana-7.3.2/data/
# RUN rm -rf /grafana/data/grafana.db
EXPOSE 3000
CMD ["sh", "/file.sh"]