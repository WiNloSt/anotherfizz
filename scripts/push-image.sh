#! /usr/bin/env bash -e

bash scripts/build.sh
docker push winlost/sayfizzbuzz
