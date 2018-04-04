#!make

PWD=$(shell pwd)
DOCKERHUB_VER=v3.17


all: up

up: 
	@docker-compose up -d

down:
	@docker-compose down

build: 
	@docker build -t dina/seqdb_ui:${DOCKERHUB_VER} Docker-tomcat

test:
	#xdg-open http://public.nrm.se/?filter[species]=arctos
    xdg-open http://public_seqdb.dina-web.net/?filter[species]=arctos

#backup: # to unzip : 'gzip -d <file>'
#	@docker exec -t  seqdb_public_database bash -c 'mysqldump --skip-lock-tables --single-transaction  -ubrf -pbrf seqdbweb' | gzip -9 > seqdb_public_$(date +%Y%d%mT%H%M).sql.gz

