#! make

VERSION = $(TRAVIS_BUILD_ID)
ME = $(USER)
TS := $(shell date '+%Y_%m_%d_%H_%M')

URL_EDITOR = https://bitbucket.org/metasolutions/dcat-editor.git

all: init build
.PHONY: all

init:
	@echo "Caching files required for the build..."
	@test -d dcat-editor || git clone --depth=1 $(URL_EDITOR)
	cd dcat-editor && cp ../bower.json .

build:
	@docker build -t bioatlas/dcatapeditor .

clean:
	@rm -rf dcat-editor

