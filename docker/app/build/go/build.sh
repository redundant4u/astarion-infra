#!/bin/sh

cleanup() {
    exit 1
}

trap cleanup SIGINT

if [ -z "$1" ]; then
    echo "Please type the domain name as the first argument."
    exit 1
fi

docker build \
    --platform linux/amd64 \
    -t astarion-build:$1 \
    .

docker run \
    --name astarion-build-$1 \
    --platform linux/amd64 \
    --env-file .env \
    -it astarion-build:$1
