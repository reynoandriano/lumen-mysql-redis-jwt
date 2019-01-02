FROM php:7.2-fpm

RUN apt-get update && apt-get install -y apt-utils mysql-client libfreetype6-dev libjpeg62-turbo-dev libpng-dev --no-install-recommends \
    && docker-php-ext-install pdo_mysql

RUN docker-php-ext-configure gd \
    --with-freetype-dir=/usr/lib/ \
    --with-png-dir=/usr/lib/ \
    --with-jpeg-dir=/usr/lib/ \
    --with-gd

RUN docker-php-ext-install gd

RUN pecl install -o -f redis \
    &&  rm -rf /tmp/pear \
    &&  docker-php-ext-enable redis
