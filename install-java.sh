if [ `id -u` -ne 0 ]; then
  echo "Must be run as root"; exit 1
fi

apt-get install default-jre default-jdk
