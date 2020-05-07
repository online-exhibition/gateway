#!/bin/bash

cd production
docker build -f Dockerfile -t exhibit-gateway:0.1 .
docker tag exhibit-gateway:0.1 docker.pkg.github.com/online-exhibition/exhibition/exhibit-gateway:0.1
docker push docker.pkg.github.com/online-exhibition/exhibition/exhibit-gateway:0.1
