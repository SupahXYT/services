#!/bin/sh

# source .env
. ./.env

export SERVER_IP=$(getent hosts $SERVER_HOSTNAME | awk '{print $1}')

printf "%s is: %s\n" "$SERVER_HOSTNAME" "$SERVER_IP"
sudo printf "sudo: %s is: %s\n" "$SERVER_HOSTNAME" "$SERVER_IP"

sudo -E podman-compose -f ./compose/actual-compose.yml up -d
sudo -E podman-compose -f ./compose/baikal-compose.yml up -d
