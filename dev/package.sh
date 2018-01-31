#!/bin/bash
# Run script within the directory
BINDIR=$(dirname "$(readlink -fn "$0")")
cd "$BINDIR"

# Execute package scripts for addons and presets
./addons/package.sh
./presets/package.sh

# ZIP
cd ..
zip mastercomfig -r 01-mastercomfig_maxperformance/ 01-mastercomfig_maxquality/ mastercomfig/ mastercomfig_exec/
mv mastercomfig.zip dev/mastercomfig.zip

printf "\n"
