FROM php:fpm

RUN apt-get update && \
    apt-get install -y \
    git \
    zip \
    curl \
    libicu-dev

RUN docker-php-ext-install pdo_mysql
RUN docker-php-ext-install mysqli
RUN docker-php-ext-configure intl
RUN docker-php-ext-install intl
RUN apt-get clean && rm -rf /var/lib/apt/lists/*
