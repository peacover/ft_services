#!/bin/bash
php="$(ps | pgrep "php-fpm7")"
nginx="$(ps | pgrep "nginx")"

if [ -z "$php" ]; then
    exit 1
elif [ -z "$nginx" ]; then
    exit 1
else
    exit 0
fi