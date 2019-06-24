#!make
include .env

all: up-local

up-prod: 
	@docker-compose up -d

up-local:
	@docker-compose -f docker-compose.dev.yml up

stop:
	@docker-compose stop

up-dev:
	@docker-compose -f docker-compose.dev.yml up

down:
	@docker-compose down

build-docker: 
	@docker build -t ${IMAGE} docker-tomcat

release-docker:
	docker push ${IMAGE}

test-browser:
    xdg-open http://public_seqdb.dina-web.net/?filter[species]=arctos

#backup: # to unzip : 'gzip -d <file>'
#	@docker exec -t  seqdb_public_database bash -c 'mysqldump --skip-lock-tables --single-transaction  -ubrf -pbrf seqdbweb' | gzip -9 > seqdb_public_$(date +%Y%d%mT%H%M).sql.gz

