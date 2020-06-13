#!/bin/bash
# Run script within the directory
BINDIR=$(dirname "$(readlink -fn "$0")")
cd "${BINDIR}" || exit 2

cp -f "../../config/mastercomfig/cfg/comfig/comfig.cfg" ./template.cfg
cp -f "../../config/templates/modules.cfg" ./modules.cfg
sed -i '/^echo/d' template.cfg
sed -i '/^alias/d' template.cfg
sed -i '/^block_game_overrides_once/d' template.cfg
sed -i -e 's/^\([^[:space:]\+\/\/].*\)/\/\/\1/g' template.cfg

printf "\n" > autoexec.cfg

printf "\n"
