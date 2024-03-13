FROM debian:buster

RUN apt update -y && \
	apt install mariadb-server -y

COPY ./50-server.cnf /etc/mysql/mariadb.conf.d/

COPY ./script.sh /

CMD ["/script.sh"]
