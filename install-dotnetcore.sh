#!/bin/sh
set -e

if [ `id -u` -ne 0 ]; then
  echo "Must be run as root"; exit 1
fi

# Be aware that there are separate apt-get repos for Ubuntu 16.04 and 16.10.
# This virtual machine is set up for 16.04 because it is a Long Term Service release.
sudo sh -c 'echo "deb [arch=amd64] https://apt-mo.trafficmanager.net/repos/dotnet-release/ xenial main" > /etc/apt/sources.list.d/dotnetdev.list'
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 417A0893
sudo apt-get update

apt-get install -y dotnet-dev-1.0.0-preview2-1-003177
