FROM arm32v7/ubuntu:bionic


RUN apt-get update && apt-get install -y nginx php-fpm php7.2-pgsql php-curl php-gd php-bcmath php-zip php-intl php-mbstring php-xml

RUN apt-get install curl

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer


WORKDIR /opt

RUN composer create-project grumpydictator/firefly-iii --no-dev --prefer-dist firefly-iii 4.7.7

ADD .env firefly-iii/.env

RUN chown -R www-data:www-data /opt/firefly-iii/

RUN rm /etc/nginx/sites-enabled/default

ADD firefly-iii.conf /etc/nginx/sites-enabled/firefly-iii.conf


CMD [ "nginx" "-g" "'daemon off;'" ]







