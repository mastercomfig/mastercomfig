#!/bin/bash

set -e

# Run script within the directory
BINDIR=$(dirname "$(readlink -fn "$0")")
cd "${BINDIR}" || exit 2

rm -rf -- prerelease/

# Execute package scripts
for D in *; do
    if [ -d "${D}" ]; then
        echo "Packaging ${D}"
        "${D}/package.sh"
    fi
done

printf "\n"
