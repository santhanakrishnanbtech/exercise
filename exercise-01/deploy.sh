#!/usr/bin/env bash

# list the docker swarm service
docker service ls

# network for the services to live
docker network create -d overlay appnetwork

# network confirmation
docker network ls

# creating backend service
docker service create --name backend-service --replicas 3 --network appnetwork backend

# service confirmation
docker service ls

# process confirmation
docker service ps backend-service

# creating frontend service
docker service create --name frontend-webapp --replicas 1 -p 8080:80 --network appnetwork frontend

# curl the site
#curl -s -k http://192.168.1.20 | grep address

# docker service rm frontend-webapp
# docker service rm backend-service
# docker network rm appnetwork


# docker stack deploy -c docker-compose-swarm.yml app
# docker service scale app_api=10