#!/bin/bash

composer install --no-dev --prefer-dist
ls -l *
php-fpm -D
nginx -g 'daemon off;'