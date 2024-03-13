#!/bin/bash

mkdir /var/www/
mkdir /var/www/html

# php 
cd /var/www/html
rm -rf *
sed -i 's/listen = \/run\/php\/php7.3-fpm.sock/listen = 9000/g' /etc/php/7.3/fpm/pool.d/www.conf
mkdir /run/php

# wp
curl -O https://wordpress.org/latest.tar.gz
tar -xvzf latest.tar.gz --strip-components=1
rm latest.tar.gz
chown -R www-data:www-data /var/www/html

# php run
/usr/sbin/php-fpm7.3 -F