FROM php:7.3.10-cli-alpine

RUN apk update \
    && apk upgrade \
    && apk add --no-cache $PHPIZE_DEPS \
    && apk add php7-curl postgresql-dev libxml2-dev \
    && pecl install xdebug \
    && docker-php-ext-enable xdebug \
    && docker-php-ext-install pdo pdo_pgsql simplexml soap bcmath

COPY --from=composer /usr/bin/composer /usr/bin/composer
