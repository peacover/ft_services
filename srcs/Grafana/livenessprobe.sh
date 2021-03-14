#!/bin/bash
grafana="$(ps | pgrep "grafana-server")"

if [ -z "$grafana" ]; then
    exit 1
else
    exit 0
fi