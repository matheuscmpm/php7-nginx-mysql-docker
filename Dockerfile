FROM php:7-fpm
RUN apt-get update && apt-get install -y zlib1g-dev libicu-dev g++ libxml++2.6-dev
RUN docker-php-ext-configure intl
RUN docker-php-ext-install intl
RUN docker-php-ext-install mbstring simplexml pdo pdo_mysql
EXPOSE 9000
CMD ["php-fpm"]
