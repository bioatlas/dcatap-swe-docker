#! make

all: build up browse

build:
	make -C generator
	make -C editor
	make -C dkan
	make -C validator

up:
	docker-compose up -d

down:
	docker-compose down

browse:
	firefox dcatgenerator.bioatlas.se &
	firefox dcateditor.bioatlas.se &
	firefox dcatvalidator.bioatlas.se &
	firefox ckan.bioatlas.se &

