# symfony_web_docker

# Symfony 5 Docker
> Docker Compose Symfony 5 - for web application 

1 - Use this template and clone repository:
```dotenv
Click the button "Use this template" and git clone
```

2 - Copy .env.dist to .env and paste your credentials in .env
```dotenv

env for docker-compose containers:
cp .env.dist .env

env for application: 
cp ./application/.env.dist ./application/.env 
```

## Installation
3 - Start the docker-compose
```bash
docker-compose up -d
```

4 - Install all the dependencies
```bash
docker exec -it -u 1000:1000 symfony_php_fpm /bin/sh
composer install
``` 

## Run the application

 **[http://symfony.localhost](http://symfony.localhost)**

Entering the containers
```bash
docker exec -it -u 1000:1000 symfony_php_fpm /bin/sh
docker exec -it -u 1000:1000 symfony_mysql /bin/sh
docker exec -it -u 1000:1000 symfony_nginx /bin/sh
```

## SHORTCUTS - MAKEFILE:
- run containers:
```bash
    make up
```
- stop containers:
```bash
    make stop 
```
- down containers
```bash
    make down 
```    
- rebuild all containers 
```basg
    make rebuild 
```
- enter into php container
```bash
    make enter-php 
```    
- enter into db container
```bash
    make enter-db
```
-enter into nginx container 
```bash
    make enter-nginx
```    

