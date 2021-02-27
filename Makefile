up:
	docker-compose up -d
stop:
	docker-compose stop
down:
	docker-compose down
rebuild:
	docker-compose down -v --remove-orphans
	docker-compose rm -vsf
	docker-compose up -d --build
enter-php:
	docker exec -it -u 1000:1000 symfony_php_fpm /bin/sh
enter-db:
	docker exec -it -u 1000:1000 symfony_mysql /bin/sh
enter-nginx:
	docker exec -it -u 1000:1000 symfony_nginx /bin/sh