#!/bin/sh

docker rm mariadb-container -f
docker rmi inception_maria-db-service -f
docker volume prune --force << EOF
y
EOF