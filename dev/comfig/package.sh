#!/bin/bash
# Run script within the directory
BINDIR=$(dirname "$(readlink -fn "$0")")
cd "$BINDIR"

cp -f ../../config/mastercomfig/cfg/comfig/comfig.cfg ./autoexec.cfg
sed -i '/^echo/d' autoexec.cfg
sed -i '/^alias/d' autoexec.cfg
sed -i '/^block_game_override_once/d' autoexec.cfg
sed -i -e 's/^\([^[:space:]\+\/\/].*\)/\/\/\1/g' autoexec.cfg
