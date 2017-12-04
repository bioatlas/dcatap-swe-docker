#! make

VERSION = $(TRAVIS_BUILD_ID)
ME = $(USER)
TS := $(shell date '+%Y_%m_%d_%H_%M')

URL_TOOL = https://github.com/project-open-data/catalog-generator.git

all: init build up
.PHONY: all

init:
	@echo "Caching files required for the build..."
	@test -d catalog-generator || git clone --depth=1 $(URL_TOOL)
	cd catalog-generator && cp ../_config.yml ../schema.yml .

build:
	@docker build -t bioatlas/generator-dcatap .

clean:
	@rm -f catalog-generator

up:
	docker-compose up -d
	xdg-open data.bioatlas.se

down:
	docker-compose down


