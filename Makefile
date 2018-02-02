#! make

all: build up init browse

init:
	docker-compose run ckan ./ckan-init.sh

build:
	make -C generator
	make -C editor
	make -C ckan
#	make -C validator

up:
	docker-compose up -d

down:
	docker-compose down

browse:
#	firefox dcatgenerator.bioatlas.se &
#	firefox dcateditor.bioatlas.se &
#	firefox dcatvalidator.bioatlas.se &
	firefox ckan.bioatlas.se &

harvest:
	firefox ckan.bioatlas.se/harvest &

harvest-cmd:
	docker-compose run ckan bash -c ". /usr/lib/ckan/default/bin/activate && paster --plugin=ckanext-harvest harvester gather_consumer  --config /etc/ckan/default/ckan.ini && paster --plugin=ckanext-harvest harvester fetch_consumer --config /etc/ckan/default/ckan.ini"

dl-demodata:
	curl -o prize.csv "http://api.nobelprize.org/v1/prize.csv"

dcatapit.rdf:
	curl -s https://ckan.bioatlas.se/catalog.rdf | sed 's/http:\/\/localhost:5000/https:\/\/ckan\.bioatlas\.se/g' > dcatapit.rdf

