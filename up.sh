#!/bin/sh

# source .env
. ./.env

export SERVER_IP=$(getent hosts $SERVER_HOSTNAME | awk '{print $1}')

podman-compose -f ./compose/actual-compose.yml up -d
podman-compose -f ./compose/baikal-compose.yml up -d
