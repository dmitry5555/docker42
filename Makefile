build:
	# docker build -t nginx ./srcs/requirements/nginx 
	# docker build -t php ./srcs/requirements/php
	# docker build -t mariadb ./srcs/requirements/mariadb

up:
	docker-compose -f ./srcs/docker-compose.yml up -d

down:
	docker-compose -f ./srcs/docker-compose.yml down

restart:
	docker-compose -f ./srcs/docker-compose.yml down
	docker-compose -f ./srcs/docker-compose.yml up -d


run: up

.PHONY: build up down restart run
