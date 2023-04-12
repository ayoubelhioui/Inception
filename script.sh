#!/bin/sh

docker rm $(docker ps -aq) -f
docker rmi $(docker images -qa) -f
docker volume rm $(docker volume ls -q)
docker network rm $(docker network ls -q)
docker system prune -all << END
y
END

