# Task
```shell
# create 2-3 servers
# install docker swarm
# create 3 backend applicaiton service
# create 1 frontend application service
# optional it can be manual service or stack
```
# Solution
```shell
# build backend with app.py, requirements.txt and backend-service files and place in all the servers
# build frontend with nginx.conf, frontend-webapp and place in all the servers
# use build.sh to build the images in all the servers
# user deploy.sh to deploy the application to swarm
```