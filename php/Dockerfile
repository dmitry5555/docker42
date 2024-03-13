FROM debian:buster

RUN apt update -y && \
	apt install php-fpm php-mysql -y

COPY ./script.sh /
# COPY ./tools/wp-config.php /

CMD [ "/script.sh" ]