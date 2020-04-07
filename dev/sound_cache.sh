#!/bin/bash
# Run script within the directory
BINDIR=$(dirname "$(readlink -fn "$0")")
cd "$BINDIR"
. ./mastercomfig-vars

find "${TF2_DIR}" -name '*.sound.cache' -print0 | 
    while IFS= read -r -d '' line; do 
        echo "Blocking sound cache for: $line"
        rm -f "$line"
        touch "$line"
        sudo chattr +i "$line"
    done

