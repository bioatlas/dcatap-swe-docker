#! make

VERSION = $(TRAVIS_BUILD_ID)
ME = $(USER)
TS := $(shell date '+%Y_%m_%d_%H_%M')

URL1 = https://github.com/ckan/ckanext-harvest
URL2 = https://github.com/ckan/ckanext-dcat

all: init build
.PHONY: all

init:
	@echo "Caching files required for the build..."
	@test -d ckanext-harvest || git clone --depth=1 $(URL1)
	@test -d ckanext-dcat || git clone --depth=1 $(URL2)

build:
	@docker build -t bioatlas/ckan \
		--build-arg CKAN_SITE_URL=https://ckan.bioatlas.se .

clean:
	@rm -rf ckan a
