#! make

VERSION = $(TRAVIS_BUILD_ID)
ME = $(USER)
TS := $(shell date '+%Y_%m_%d_%H_%M')

URL = https://github.com/SEMICeu/dcat-ap_validator.git

all: init build
.PHONY: all

init:
	@echo "Caching files required for the build..."
	@test -d  dcat-ap_validator || git clone --depth=1 $(URL)


build:
	@docker build -t bioatlas/dcatapvalidator .

clean:
	@rm -rf dcat-ap_validator
