#!/bin/bash
# Run script within the directory
BINDIR=$(dirname "$(readlink -fn "$0")")
cd "$BINDIR"

# Execute package scripts
for D in *; do
    if [ -d "${D}" ]; then
        echo "Packaging ${D}"
        ${D}/package.sh
    fi
done

# ZIP
echo "Packaging ZIP"
rm mastercomfig.zip
(cd ../config && zip ../dev/mastercomfig -r *)

printf "\n"
