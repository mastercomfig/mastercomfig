#!/bin/bash
# Run script within the directory
BINDIR=$(dirname "$(readlink -fn "$0")")
cd "${BINDIR}" || exit 2

rm -rf -- *.cfg *.zip

cp -f "../../config/mastercomfig/cfg/comfig/comfig.cfg" ./autoexec_template.cfg
sed -i '/^echo/d' autoexec_template.cfg
sed -i '/^alias/d' autoexec_template.cfg
sed -i '/^block_game_overrides_once/d' autoexec_template.cfg
sed -i -e 's/^\([^[:space:]\+\/\/].*\)/\/\/\1/g' autoexec_template.cfg
cp -f "../../config/templates/modules/modules.cfg" ./modules_template.cfg

printf "\n"
