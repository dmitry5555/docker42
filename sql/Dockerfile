FROM debian:latest

RUN apt-get update
RUN apt-get install -y mariadb-server

# Создаем каталог для сокета MySQL
RUN mkdir -p /run/mysqld \
    && chown mysql:mysql /run/mysqld

# ENV MYSQL_ROOT_PASSWORD=a3b6c9
# ENV MYSQL_DATABASE=test
# ENV MYSQL_USER=user
# ENV MYSQL_PASSWORD=secret

# RUN --namemariadb -e MYSQL_ROOT_PASSWORD=a3b6c9 -e MYSQL_DATABASE=testdatabase -p 3306:3306 -d mariadb
# RUN sudo systemctl start mariadb.service
# RUN mysql_secure_installation

EXPOSE 3306

# HEALTHCHECK --start-period=5m \
#   CMD /usr/libexec/mysqld --user=root

CMD ["mysqld", "--user=mysql"]

# "mysql --env MARIADB_USER=user --env MARIADB_PASSWORD=secret --env MARIADB_DATABASE=exmple-database --env MARIADB_ROOT_PASSWORD=my-secret-pw"