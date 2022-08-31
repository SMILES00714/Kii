#!/usr/bin/env bash

export LC_ALL=C

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/.. || exit

DOCKER_IMAGE=${DOCKER_IMAGE:-kiipay/kiid-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/kiid docker/bin/
cp $BUILD_DIR/src/kii-cli docker/bin/
cp $BUILD_DIR/src/kii-tx docker/bin/
strip docker/bin/kiid
strip docker/bin/kii-cli
strip docker/bin/kii-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
