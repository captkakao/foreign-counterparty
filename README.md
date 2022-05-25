## Docker & docker-compose

.env for docker ```cp .env.example .env```

change FOREIGN_COUNTERPARTY_API_PATH variable in .env to your full path to project

```
docker-compose build
docker-compose ps
docker-compose up -d
```

Check http://127.0.0.1:8060

If you need artisan use ```docker-compose exec foreign-counterparty-api-php-fpm bash```