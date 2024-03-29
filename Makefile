build:
	docker build  -t nginx ./srcs/requirements/nginx 
	docker build  -t php ./srcs/requirements/wordpress
	docker build  -t mariadb ./srcs/requirements/mariadb

up:
	docker-compose -f ./srcs/docker-compose.yml up -d

down:
	docker-compose -f ./srcs/docker-compose.yml down

restart:
	docker-compose -f ./srcs/docker-compose.yml down
	docker-compose -f ./srcs/docker-compose.yml up -d


run: up

clean:
	docker system prune --all --force

.PHONY: build up down restart run clean
