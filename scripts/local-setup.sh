#!/bin/sh
set -e

ATLANTIS_VERSION="v0.36.0" # Change the version as needed
ATLANTIS_PACKAGE="atlantis_linux_amd64.zip" # Change the package name if using a different OS/architecture

echo "Downloading atlantis binary..."
wget https://github.com/runatlantis/atlantis/releases/download/${ATLANTIS_VERSION}/${ATLANTIS_PACKAGE}
unzip ${ATLANTIS_PACKAGE}

echo "Downloading ngrok..."
wget -c https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz -O - \
    | tar -xz

echo "Generate random secret string for webhook secret..."
echo $RANDOM | md5sum | head -c 20; echo;


