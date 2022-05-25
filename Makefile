# Сборка всего проекта
build:
	docker-compose build

# Поднятие всего проекта
up:
	docker-compose up -d

# Просмотр активных сервисов
ps:
	docker-compose ps

# Положить все сервисы
down:
	docker-compose down

# Рестартануть все сервисы
restart:
	docker-compose restart

# Пересобрать весь проект
rebuild:
	docker-compose down
	docker-compose build
	docker-compose up -d
	sh install_foreign-counterparty_api.sh

# Поднять только сервис nginx
up-nginx:
	docker-compose up -d foreign-counterparty-api-nginx --build

# Поднять только сервис foreign-counterparty-api
up-php-fpm:
	docker-compose up -d foreign-counterparty-api-php-fpm --build

# Положить только сервис nginx
down-nginx:
	docker-compose down foreign-counterparty-api-nginx

# Положить только сервис adata-api
down-php-fpm:
	docker-compose down foreign-counterparty-api-php-fpm

# Консоль для foreign-counterparty-api
php-fpm:
	docker-compose exec foreign-counterparty-api-php-fpm bash