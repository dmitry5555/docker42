PHP_DOCKERFILE=./php/Dockerfile
NGINX_DOCKERFILE=./nginx/Dockerfile

# Команды
build:
	docker build -t my-nginx ./nginx
	docker build -t my-php ./php-wp
	docker build -t my-sql ./sql

up:
	docker-compose up -d

down:
	docker-compose down

restart:
	docker-compose down
	docker-compose up -d

# Запуск контейнеров с сборкой
run: build up

.PHONY: build up down restart run
