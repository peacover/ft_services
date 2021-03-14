#!/bin/bash
mysql="$(ps | pgrep "mysql")"

if [ -z "$mysql" ]; then
    exit 1
else
    exit 0
fi