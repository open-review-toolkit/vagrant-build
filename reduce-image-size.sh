#!/bin/bash
set -euf -o pipefail

apt-get remove -y ghc-8.4.2 cabal-install-2.2 build-essential snapd

apt-get autoremove -y
apt-get clean -y
apt-get autoclean -y

set +e
dd if=/dev/zero of=/EMPTY bs=1M
set -e
rm -f /EMPTY
