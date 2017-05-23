#!/bin/sh
set -e

if [ `id -u` -ne 0 ]; then
  echo "Must be run as root"; exit 1
fi

if ! node --version; then
    curl -sL https://deb.nodesource.com/setup_7.x | -E bash -
    apt-get install -y nodejs
fi
