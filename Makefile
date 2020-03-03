up:
	docker-compose pull --include-deps --ignore-pull-failures
	docker-compose up --detach

down:
	docker-compose down
