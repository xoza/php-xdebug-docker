FROM php:7.4.14-fpm-alpine

ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/

RUN chmod +x /usr/local/bin/install-php-extensions \
	&& sync \
	&& install-php-extensions pdo pdo_pgsql simplexml soap bcmath calendar zip gd xdebug @composer
