#!/bin/bash

set -e

# Run script within the directory
BINDIR=$(dirname "$(readlink -fn "$0")")
cd "${BINDIR}" || exit 2

. ./mastercomfig-vars || echo "Using system environment for mastercomfig vars."

if [ -z "${TF2_DIR}" ]; then
  echo "TF2_DIR envvar not found!"
  exit 3
fi

cp -f ./generate_viewed.sh "${TF2_DIR}/tf/maps"
chmod +x "${TF2_DIR}/tf/maps/generate_viewed.sh"
"${TF2_DIR}/tf/maps/generate_viewed.sh"
mv -f "${TF2_DIR}/tf/maps/viewed.res" "../config/addons/mastercomfig-no-tutorial-addon/media"
rm -f "${TF2_DIR}/tf/maps/generate_viewed.sh"
