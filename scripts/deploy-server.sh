#! /usr/bin/env bash -e

ssh ubuntu@18.176.61.79 "mkdir -p /home/ubuntu/app"
scp docker-compose.yml ubuntu@18.176.61.79:/home/ubuntu/app/
ssh ubuntu@18.176.61.79 'bash -s' < scripts/deploy.sh
