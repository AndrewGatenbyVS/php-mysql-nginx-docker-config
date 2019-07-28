FROM php:7.3-fpm as dev

WORKDIR /var/www

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        libcurl4-gnutls-dev \
        libsqlite3-0 \
        libxml2-dev \
        libmcrypt-dev \
        libicu-dev \
        curl \
        libmemcached-dev \
        && rm -rf /var/lib/apt/lists/*

RUN docker-php-ext-install curl && \
 docker-php-ext-install json && \
 docker-php-ext-install mbstring && \
 docker-php-ext-install pdo && \
 docker-php-ext-install pdo_mysql && \
 docker-php-ext-install mysqli && \
 docker-php-ext-install xml

RUN mkdir -p /storage/framework/cache && \
	mkdir -p /storage/framework/sessions && \
	mkdir -p /storage/framework/views && \
	mkdir -p /storage/app/public && \
	mkdir -p /storage/logs && \
	chown -R www-data:www-data /storage
