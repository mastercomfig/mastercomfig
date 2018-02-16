#!/bin/bash
# Run script within the directory
BINDIR=$(dirname "$(readlink -fn "$0")")
cd "$BINDIR"

# Execute package scripts
*/package.sh

# ZIP
rm mastercomfig.zip
(cd ../config && zip ../dev/mastercomfig -r *)

printf "\n"
