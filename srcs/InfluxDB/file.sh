rc-status
touch /run/openrc/softlevel

# influxd &

rc-service influxdb start

# /usr/bin/influx -execute "CREATE DATABASE test;"
/usr/bin/influx -execute "CREATE USER peacover WITH PASSWORD 'peacover' WITH ALL PRIVILEGES;"

# /usr/bin/influx -execute "GRANT ALL ON telegraf TO peacover;"
telegraf-1.17.0/usr/bin/telegraf --config /telegraf-1.17.0/usr/bin/telegraf.conf &

# bin/bash
tail -F /dev/null
