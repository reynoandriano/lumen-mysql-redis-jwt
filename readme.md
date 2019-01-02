# lumen-mysql-redis-jwt

## Running on Docker

docker run --rm -v $(pwd):/app composer install

docker-compose up

cp .env.example .env

docker-compose exec app php artisan migrate --seed
