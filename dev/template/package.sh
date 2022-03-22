#!/bin/bash
# Run script within the directory
BINDIR=$(dirname "$(readlink -fn "$0")")
cd "${BINDIR}" || exit 2

rm -rf -- overrides/
cp -r "../../config/templates/overrides" ./overrides

zip -9r template.zip overrides/

printf "\n"
