FROM php:7.2-cli-alpine3.7

RUN apk update \
    && apk upgrade \
    && apk add --no-cache $PHPIZE_DEPS \
    && apk add php7-curl \
    && pecl install xdebug \
    && docker-php-ext-enable xdebug
