FROM richarvey/nginx-php-fpm

MAINTAINER feload@gmail.com

WORKDIR /var/www/html

COPY application/ ./
COPY setup.sh /setup.sh

RUN ["chmod", "+x", "/setup.sh"]

ENTRYPOINT ["/setup.sh"]