rc-status
touch /run/openrc/softlevel

cd grafana-7.3.2/bin/
./grafana-server

tail -F /dev/null
# bin/bash