SHELL:= /bin/bash

build:
	docker-compose build

push:
	docker push felipemocruha/healthcheck:$(IMG_VERSION)

pull:
	docker pull felipemocruha/healthcheck:$(IMG_VERSION)


.PHONY: build push pull
