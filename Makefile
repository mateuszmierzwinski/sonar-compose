default: build prepare stop clean run

build:
	docker-compose build

prepare:
	-@mkdir -p ~/dockervolume/sonar-pgdata

run:
	docker-compose run -p 9000:9000 -p 9001:9001 -d webengine-service

stop:
	-@docker stop $(shell docker ps --filter name=sonar_* -q)

clean:
	-@docker container rm $(shell docker container ls -a --filter name=sonar_* -q)
