#! /usr/bin/env bash -e

docker build . -t sayfizzbuzz
docker login
docker tag sayfizzbuzz winlost/sayfizzbuzz
