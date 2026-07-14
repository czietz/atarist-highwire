#!/bin/bash -eux
# -e: Exit immediately if a command exits with a non-zero status.
# -u: Treat unset variables as an error when substituting.
# -x: Display expanded script commands

DOWNLOAD_DIR=https://mikro.atari.org/tho-otto.de/mint
SYSROOT_DIR=${SYSROOT_DIR:-"/"}

sudo mkdir -p "${SYSROOT_DIR}"

for filename in $*
do
	wget -q -O - "$DOWNLOAD_DIR/${filename}" | sudo tar -C "${SYSROOT_DIR}" -xJf -
done
