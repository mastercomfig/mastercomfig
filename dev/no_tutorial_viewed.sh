#!/bin/bash
# Run script within the directory
BINDIR=$(dirname "$(readlink -fn "$0")")
cd "$BINDIR"
. ./mastercomfig-vars

cp -f ./generate_viewed.sh "${TF2_DIR}/tf/maps"
chmod +x "${TF2_DIR}/tf/maps/generate_viewed.sh"
"${TF2_DIR}/tf/maps/generate_viewed.sh"
mv -f "${TF2_DIR}/tf/maps/viewed.res" "../config/addons/mastercomfig-no-tutorial-addon/media"
rm -f "${TF2_DIR}/tf/maps/generate_viewed.sh"
