#!/usr/bin/env bash

# build frontend docker image
docker build -t frontend -f frontend-webapp .

# build backend docker image
docker build -t backend -f backend-service .