set -e
VAGRANT_DIR=/vagrant
$VAGRANT_DIR/install-docker.sh
$VAGRANT_DIR/install-apps.sh
$VAGRANT_DIR/install-java.sh
