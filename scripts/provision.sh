#! /usr/bin/env bash -e

sudo apt-get update

# install docker
sudo apt-get remove -y docker docker-engine docker.io
sudo apt-get install -y docker.io

# install docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.25.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# allow docker command without sudo
sudo usermod -aG docker $(whoami)
