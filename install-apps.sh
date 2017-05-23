set -e

if [ `id -u` -ne 0 ]; then
  echo "Must be run as root"; exit 1
fi

apt-get update
apt-get install -y dos2unix curl
apt-get install -y build-essential cmake python-dev python-pip python3-dev python3-pip

# vim 8.0
add-apt-repository -y ppa:jonathonf/vim
apt-get update
apt-get install -y vim vim-gtk

# neovim
add-apt-repository -y ppa:neovim-ppa/unstable
apt-get update
apt-get -y install software-properties-common
apt-get -y install neovim
