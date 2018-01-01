#!/bin/bash
# Run script within the directory
BINDIR=$(dirname "$(readlink -fn "$0")")
cd "$BINDIR"

# Execute package scripts for addons and presets
./addons/package.sh
./presets/package.sh

# ZIP
cd ..
zip mastercomfig -r 01-ISSUES_NO_MOVE_OR_SHOOT_LOCAL_SERVERS.txt 01-mastercomfig_dx_maxperformance/ 01-mastercomfig_dx_maxquality/ mastercomfig/ mastercomfig_exec/
mv mastercomfig.zip dev/mastercomfig.zip

printf "\n"
