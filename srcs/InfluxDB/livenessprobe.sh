#!/bin/bash
telegraf="$(ps | pgrep "telegraf")"
influx="$(ps | pgrep "influx")"

if [ -z "$telegraf" ]; then
    exit 1
elif [ -z "$influx" ]; then
    exit 1
else
    exit 0
fi