#!/bin/sh

podman-compose -f ./compose/actual-compose.yml down
podman-compose -f ./compose/baikal-compose.yml down
