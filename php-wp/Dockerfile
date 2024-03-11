FROM debian:latest

# WORKDIR /app

RUN apt update
RUN apt install -y php-fpm php-mysql

RUN mkdir -p /var/www/html
RUN mkdir -p /tmp

# Устанавливаем WordPress
ADD https://wordpress.org/latest.tar.gz /tmp/wordpress.tar.gz
RUN tar -xzf /tmp/wordpress.tar.gz -C /var/www/html --strip-components=1 \
    && rm /tmp/wordpress.tar.gz

# права
RUN chown -R www-data:www-data /var/www/html


COPY www.conf /etc/php/7.4/fpm/pool.d/www.conf
WORKDIR /var/www/html
EXPOSE 9000

# COPY index.php index.php
# COPY index.html index.html

RUN chmod +x index.php

CMD ["php-fpm7.4", "--nodaemonize"]
