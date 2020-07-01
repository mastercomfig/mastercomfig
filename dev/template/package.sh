#!/bin/bash
# Run script within the directory
BINDIR=$(dirname "$(readlink -fn "$0")")
cd "${BINDIR}" || exit 2

rm -rf -- user/
cp -r "../../config/templates/user" ./user

zip -9r template.zip user/

printf "\n"
