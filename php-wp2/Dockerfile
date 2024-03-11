FROM debian:latest

# WORKDIR /app

RUN apt update
RUN apt install -y php-fpm
#RUN mkdir -p /usr/share/nginx/html
# Создаем структуру директорий для сайта
RUN mkdir -p /var/www/html
COPY www.conf /etc/php/7.4/fpm/pool.d/www.conf
WORKDIR /var/www/html
EXPOSE 9000

COPY index.php index.php
COPY index.html index.html

RUN chmod +x index.php
# RUN chmod +x /usr/share/nginx/html/index.html

# CMD ["php-fpm", "-F"]

CMD ["php-fpm7.4", "--nodaemonize"]
