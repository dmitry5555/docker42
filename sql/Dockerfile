FROM debian:latest

RUN apt-get update
RUN apt-get install -y mariadb-server

# Создаем каталог для сокета MySQL
RUN mkdir -p /run/mysqld \
    && chown mysql:mysql /run/mysqld

# RUN --namemariadb -e MYSQL_ROOT_PASSWORD=a3b6c9 -e MYSQL_DATABASE=testdatabase -p 3306:3306 -d mariadb
# RUN sudo systemctl start mariadb.service
# RUN mysql_secure_installation

EXPOSE 3306

LABEL version="1.0"
LABEL description="MariaDB Server"

HEALTHCHECK --start-period=5m \
  CMD /usr/libexec/mysqld --user=root

CMD ["mysqld", "--user=mysql"]