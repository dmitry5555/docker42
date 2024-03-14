#!/bin/bash

service mysql start 

mysqld --general-log=1 --general-log-file=/var/log/mysql/mysql.log

echo "CREATE DATABASE IF NOT EXISTS $db_name ;" > db1.sql
echo "CREATE USER IF NOT EXISTS '$db_user'@'%' IDENTIFIED BY '$db_pwd' ;" >> db1.sql
echo "GRANT ALL PRIVILEGES ON $db_name.* TO '$db_user'@'%' ;" >> db1.sql
echo "ALTER USER 'root'@'localhost' IDENTIFIED BY '12345' ;" >> db1.sql
echo "FLUSH PRIVILEGES;" >> db1.sql

mysql < db1.sql

mysql -u $db_user -p$db_pwd $db_name < /dump.sql

kill $(cat /var/run/mysqld/mysqld.pid)

mysqld