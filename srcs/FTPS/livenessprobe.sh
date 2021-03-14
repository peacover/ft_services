#!/bin/bash
ftps="$(ps | pgrep "vsftpd")"

if [ -z "$ftps" ]; then
    exit 1
else
    exit 0
fi