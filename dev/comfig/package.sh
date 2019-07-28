#!/bin/bash
# Run script within the directory
BINDIR=$(dirname "$(readlink -fn "$0")")
cd "$BINDIR"

cp -f ../../config/mastercomfig/cfg/comfig/comfig.cfg .
sed -i '/^echo/d' comfig.cfg
sed -i '/^alias/d' comfig.cfg
sed -i -e 's/^\([^\/\/].*\)/\/\/\1/g' comfig.cfg
sed -i '/^[[:space:]]*$/d' comfig.cfg
