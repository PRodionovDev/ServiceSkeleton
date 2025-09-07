init: update-configs \
  up \
  composer-install \
  composer-dump-autoload

update-configs:
    $(shell sed 's/%APP_ID%/service/g' app/.env.example > app/.env)

composer-install:
	docker exec -it php-container composer install --no-interaction --optimize-autoloader --ignore-platform-reqs

composer-dump-autoload:
	docker exec -it php-container composer dump-autoload

up:
	docker-compose up -d --build --remove-orphans

down:
	docker-compose down --remove-orphans

diff:
	docker exec -it php-container php bin/console --no-interaction doctrine:migrations:diff

migrate:
	docker exec -it php-container php bin/console --no-interaction doctrine:migrations:migrate

clear:
	docker exec -it php-container php bin/console --no-interaction cache:clear