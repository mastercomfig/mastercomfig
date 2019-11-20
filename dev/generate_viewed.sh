#!/bin/bash
# Run script within the directory
BINDIR=$(dirname "$(readlink -fn "$0")")
cd "$BINDIR"

folder=${PWD##*/}

if [ "$folder" = "maps" ]; then
    VIEW_COUNT=16
    viewed="viewed.res"
    rm -f "$viewed"
    touch "$viewed"
    echo "viewed.res" > $viewed
    echo "{" >> $viewed
    for M in *; do
        ext="${M##*.}"
        if [ -f "${M}" ] && [ $ext = "bsp" ]; then
            name="${M%.*}"
            echo "	${name}" >> $viewed
            echo "	{" >> $viewed
            echo "		\"viewed\"		\"${VIEW_COUNT}\"" >> $viewed
            echo "	}" >> $viewed
        fi
    done
    echo "}" >> $viewed
else
    echo "Run this script in tf/maps"
    exit 1
fi
