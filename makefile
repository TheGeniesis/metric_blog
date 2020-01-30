init:
		test -f .env || cp .env.dist .env
		test -f docker-compose.yaml || cp docker-compose.yaml.dist docker-compose.yaml
		docker network create --driver=bridge metric_article_network || true
		docker-compose up -d
		docker-compose run --rm php-fpm composer install
		docker-compose run --rm php-fpm bin/console doctrine:database:drop --force --if-exists
		docker-compose run --rm php-fpm bin/console doctrine:database:create
		docker-compose run --rm php-fpm php bin/console doctrine:m:m --no-interaction
		docker-compose run --rm php-fpm bin/console doctrine:schema:update --force
		
start:
		docker-compose up -d
		docker-compose run --rm php-fpm composer install

remove:
		docker-compose down -v
		docker network rm metric_article_network

build-image:
		docker-compose build
load-image-kind:
		kind load docker-image metric_app:unreleased
deploy-on-k8s:
		kubectl apply -f k8s -R