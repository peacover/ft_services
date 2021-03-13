grafana="$(ps | pgrep "grafana")"

if [ -z "$grafana" ]; then
    exit 1
else
    exit 0
fi