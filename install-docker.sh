#!/bin/sh
set -e

if [ `id -u` -ne 0 ]; then
  echo "Must be run as root"; exit 1
fi

if ! docker --version; then
  apt-get update
  apt-get install apt-transport-https ca-certificates
  curl -s http://yum.dockerproject.org/gpg | sudo apt-key add
  echo "deb https://apt.dockerproject.org/repo ubuntu-xenial main" > /etc/apt/sources.list.d/docker.list
  apt-get update
  apt-get install -y docker-engine
else
  echo "Docker already installed, skipping"
fi

if ! docker-compose --version; then
  echo "Installing docker compose"
  curl -L https://github.com/docker/compose/releases/download/1.10.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
  #curl -L "https://github.com/docker/compose/releases/download/1.9.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
  chmod +x /usr/local/bin/docker-compose
else
  echo "Docker compose already installed, skipping"
fi
