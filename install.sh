set -e
VAGRANT_DIR=/vagrant
$VAGRANT_DIR/install-docker.sh
$VAGRANT_DIR/install-apps.sh
$VAGRANT_DIR/install-java.sh
$VAGRANT_DIR/install-dotnetcore.sh
$VAGRANT_DIR/install-cf-cli
$VAGRANT_DIR/install-idris.sh
