#!/bin/bash
sshd="$(ps | pgrep "sshd")"
nginx="$(ps | pgrep "nginx")"

if [ -z "$sshd" ]; then
    exit 1
elif [ -z "$nginx" ]; then
    exit 1
else
    exit 0
fi