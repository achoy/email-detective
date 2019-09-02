#! /bin/bash

echo "generating PRODUCTION certs for the following hosts:"

echo $DOCKER_DOMAINS

read -p "Are you sure? " -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]
then
  echo "cutting fresh TLS certs"
  docker run \
    -e CA_SUBJECT=$CA_SUBJECT \
    -e SSL_SUBJECT=$SSL_SUBJECT \
    -e SSL_DNS="$DOCKER_DOMAINS" \
    -e SSL_EXPIRE=365 \
    -v $PWD/private/certs:/certs \
    paulczar/omgwtfssl
fi
