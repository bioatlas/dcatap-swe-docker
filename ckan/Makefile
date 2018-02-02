#! make

VERSION = $(TRAVIS_BUILD_ID)
ME = $(USER)
TS := $(shell date '+%Y_%m_%d_%H_%M')

URL = https://github.com/italia/dati-ckan-docker.git
URL1 = https://github.com/ckan/ckanext-harvest
URL2 = https://github.com/ckan/ckanext-dcat

all: init build
.PHONY: all

init:
	@echo "Caching files required for the build..."
	@test -d dati-ckan-docker || git clone --depth=1 $(URL)
	@test -d ckanext-harvest || git clone --depth=1 $(URL1)
	@test -d ckanext-dcat || git clone --depth=1 $(URL2)
	mkdir -p ckanext-dcatapit && cp -r dati-ckan-docker/ckan/ckanext-dcatapit/* ckanext-dcatapit/

build:
#	@docker build -t bioatlas/ckan .
	cd dati-ckan-docker && docker build -t daf-ckan-solr:1.0.0 ./solr
	cd dati-ckan-docker && docker build -t daf-ckan:1.0.0 ./ckan

clean:
	@rm -rf dati-ckan-docker ckanext-harvest ckanext-dcat ckanext-dcatapit
