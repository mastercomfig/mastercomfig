#!/bin/bash
# Run script within the directory
BINDIR=$(dirname "$(readlink -fn "$0")")
cd "$BINDIR"

cp -f ../../config/mastercomfig/cfg/comfig/comfig.cfg ./template.cfg
sed -i '/^echo/d' template.cfg
sed -i '/^alias/d' template.cfg
sed -i '/^block_game_override_once/d' template.cfg
sed -i -e 's/^\([^[:space:]\+\/\/].*\)/\/\/\1/g' template.cfg

printf "\r\n" > autoexec.cfg
printf "\r\n" > modules.cfg
