build:
	# docker build -t nginx ./srcs/nginx 
	# docker build -t php ./srcs/php
	# docker build -t mariadb ./mariadb

up:
	docker-compose up -d

down:
	docker-compose down

restart:
	docker-compose down
	docker-compose up -d

run: build up

.PHONY: build up down restart run
