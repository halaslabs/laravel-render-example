FROM php:8.1-fpm

RUN apt-get update; \ 
    docker-php-ext-install bcmath; \
    apt-get install -y nginx

COPY --chown=www-data:www-data . .
COPY ./render/nginx.conf /etc/nginx/sites-enabled/default

EXPOSE 80

ENTRYPOINT ["/bin/bash", "/var/www/html/render/entrypoint.sh"]