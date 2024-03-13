FROM debian:buster

# WORKDIR /app

RUN apt update
RUN apt install -y nginx
COPY nginx.conf /etc/nginx/nginx.conf

WORKDIR /var/www/html

# COPY index.php /var/www/html/index.php
# COPY index.html /var/www/html/index.html
COPY test.php /usr/share/nginx/html/test.php
COPY index.html /usr/share/nginx/html/index.html
RUN chmod +x /usr/share/nginx/html/test.php
RUN chmod +x /usr/share/nginx/html/index.html
# COPY your_script.php your_script.php
# COPY index.html index.html

# COPY your_script.php /usr/share/nginx/html/