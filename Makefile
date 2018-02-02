#! make

all: build up init browse

init:
	docker-compose run ckan ./ckan-init.sh

build:
	make -C ckan
#	make -C generator
#	make -C editor
#	make -C validator

up:
	docker-compose up -d

down:
	docker-compose down

browse:
	echo "Do you have SSL certs in the ./certs dir?"
	firefox https://ckan.bioatlas.se &
#	firefox dcatgenerator.bioatlas.se &
#	firefox dcateditor.bioatlas.se &
#	firefox dcatvalidator.bioatlas.se &

harvest:
	firefox https://ckan.bioatlas.se/harvest &

harvest-cmd:
	docker-compose run ckan bash -c ". /usr/lib/ckan/default/bin/activate && paster --plugin=ckanext-harvest harvester gather_consumer  --config /etc/ckan/default/ckan.ini && paster --plugin=ckanext-harvest harvester fetch_consumer --config /etc/ckan/default/ckan.ini"

dl-demodata:
	curl -o prize.csv "http://api.nobelprize.org/v1/prize.csv"

dcatapit.rdf:
	curl -s https://ckan.bioatlas.se/catalog.rdf | sed 's/http:\/\/localhost:5000/https:\/\/ckan\.bioatlas\.se/g' > dcatapit.rdf

