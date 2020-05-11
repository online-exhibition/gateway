#!/bin/bash
SCRIPT_PATH="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

cd $SCRIPT_PATH/../ui
npm run build

cd $SCRIPT_PATH/production
docker build -f Dockerfile -t exhibit-gateway:0.2 .
docker tag exhibit-gateway:0.2 docker.pkg.github.com/online-exhibition/exhibition/exhibit-gateway:0.2
docker push docker.pkg.github.com/online-exhibition/exhibition/exhibit-gateway:0.2
