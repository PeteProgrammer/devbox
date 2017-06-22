if [ `id -u` -ne 0 ]; then
  echo "Must be run as root"; exit 1
fi

set -e

apt-get install zlib1g-dev 
apt-get install -y ghc cabal-install
cabal update && cabal install idris

