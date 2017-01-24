set -e

if [ `id -u` -ne 0 ]; then
  echo "Must be run as root"; exit 1
fi

apt-get update
apt-get install -y dos2unix curl
apt-get install -y build-essential cmake

# vim 8.0
add-apt-repository ppa:jonathonf/vim
apt-get update
apt-get install vim vim-gtk
