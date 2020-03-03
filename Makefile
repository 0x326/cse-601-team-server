up:
	docker-compose pull --ignore-pull-failures
	docker-compose up --detach

down:
	docker-compose down
