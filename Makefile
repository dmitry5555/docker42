build:
	docker build -t nginx ./nginx
	docker build -t php ./php
	# docker build -t maria-db ./maria-db

up:
	docker-compose up -d

down:
	docker-compose down

restart:
	docker-compose down
	docker-compose up -d

run: build up

.PHONY: build up down restart run
