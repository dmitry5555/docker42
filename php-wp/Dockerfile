FROM debian:latest

# WORKDIR /app

RUN apt update
RUN apt install -y php-fpm
#RUN mkdir -p /usr/share/nginx/html
COPY index.php /usr/share/nginx/html/index.php
COPY index.html /usr/share/nginx/html/index.html
RUN chmod +x /usr/share/nginx/html/index.php
RUN chmod +x /usr/share/nginx/html/index.html

CMD ["php-fpm", "-F"]