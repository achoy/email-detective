#! /bin/bash

HOST=$1

echo "setting default file $HOST"
rsync -P ./ops/etc/docker/daemon.json root@$HOST:/etc/docker

echo "copying certs"
rsync -P ./private/certs/* root@$HOST:/root/certs/

echo "restarting"
ssh root@$HOST systemctl start docker
