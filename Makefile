#! make

all: build up browse

build:
	make -C generator
	make -C editor

up:
	docker-compose up -d

down:
	docker-compose down

browse:
	firefox dcatgenerator.bioatlas.se &
	firefox dcateditor.bioatlas.se &

