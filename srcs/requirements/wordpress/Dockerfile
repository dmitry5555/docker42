FROM debian:buster

RUN apt update -y && \
	apt install php-fpm php-mysql -y && \
	apt install -y curl

# create dir and start installing
# WORKDIR /var/www/html 
# RUN curl -O https://wordpress.org/latest.tar.gz \
#     && tar -xvzf latest.tar.gz --strip-components=1 \
#     && rm latest.tar.gz \
#     && chown -R www-data:www-data /var/www/html

COPY ./tools/script.sh /
COPY ./tools/wp-config.php /
# COPY ./tools/up.webp /
# COPY ./tools/wp-config.php /

CMD [ "/script.sh" ]
