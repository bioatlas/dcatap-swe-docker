#! make

VERSION = $(TRAVIS_BUILD_ID)
ME = $(USER)
TS := $(shell date '+%Y_%m_%d_%H_%M')

URL_TOOL = https://github.com/project-open-data/catalog-generator.git

all: init build
.PHONY: all

init:
	@echo "Caching files required for the build..."
	@test -d catalog-generator || git clone -b gh-pages --depth=1 $(URL_TOOL)
	cd catalog-generator && cp ../_config.yml ../schema.yml .

build:
	@docker build -t bioatlas/dcatapgenerator .

clean:
	@rm -rf catalog-generator

