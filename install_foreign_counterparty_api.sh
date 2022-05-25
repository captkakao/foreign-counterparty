#!/bin/bash
docker-compose exec -T foreign-counterparty-api-php-fpm chmod -R 777 storage/ bootstrap/
docker-compose exec -T foreign-counterparty-api-php-fpm cp .env.development .env
docker-compose exec -T foreign-counterparty-api-php-fpm composer install
docker-compose exec -T foreign-counterparty-api-php-fpm php artisan swagger-lume:generate
docker-compose exec -T foreign-counterparty-api-php-fpm php artisan swagger-lume:publish