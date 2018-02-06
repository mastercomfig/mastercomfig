#!/bin/bash
# Run script within the directory
BINDIR=$(dirname "$(readlink -fn "$0")")
cd "$BINDIR"

# Execute package scripts for addons and presets
# also build autoexecs for cfg.tf
addons/package.sh
presets/package.sh
autoexecs/package.sh

# ZIP
rm mastercomfig.zip
(cd ../config && zip ../dev/mastercomfig -r *)

printf "\n"
