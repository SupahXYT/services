#!/bin/sh

sudo podman-compose -f ./compose/actual-compose.yml down
sudo podman-compose -f ./compose/baikal-compose.yml down
