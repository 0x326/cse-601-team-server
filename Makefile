up:
	docker-compose pull --include-deps --ignore-pull-failures
	docker-compose up -d

down:
	docker-compose down
