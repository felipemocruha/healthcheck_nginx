SHELL:= /bin/bash

build:
	docker-compose build

push:
	docker push felipemocruha/healthcheck:$(IMG_VERSION)

pull:
	docker pull felipemocruha/healthcheck:$(IMG_VERSION)

deploy:
	docker stack deploy healthcheck

.PHONY: build push pull deploy
