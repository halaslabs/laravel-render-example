FROM php:8.1-fpm

RUN apt-get update; \
    apt-get install -y unzip zip nginx; \
    docker-php-ext-install bcmath

COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

COPY --chown=www-data:www-data . .
COPY ./render/nginx.conf /etc/nginx/sites-enabled/default

EXPOSE 80

ENTRYPOINT ["/bin/bash", "/var/www/html/render/entrypoint.sh"]