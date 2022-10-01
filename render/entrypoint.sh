#!/bin/bash

composer install --no-dev --prefer-dist

php-fpm -D
nginx -g 'daemon off;'