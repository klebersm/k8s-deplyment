#!/bin/bash

docker build -t klebermarcal/backend:1.0 backend/.
docker build -t klebermarcal/database:1.0 database/.

docker push klebermarcal/backend:1.0
docker push klebermarcal/database:1.0

kubectl apply -f ./services.yml
kubectl apply -f ./deployment.yml