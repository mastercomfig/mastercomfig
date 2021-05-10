#!/bin/bash

set -e

# Run script within the directory
BINDIR=$(dirname "$(readlink -fn "$0")")
cd "${BINDIR}" || exit 2

if [ "${prerelease:=false}" = false ] && [ "${minor_release:=false}" = false ]; then
  ./update.sh || exit 1
fi

export zip_package="true"

./package.sh
rm -f comfig/mastercomfig.zip
zip -9r comfig/mastercomfig.zip addons/ presets/ -x "*.sh"

unset zip_package

./package.sh

if [ "${prerelease:=false}" = true ]; then
  exit 0
fi

if [ "${patch:=false}" = true ]; then
    ./patch.sh
else
  if [ "${CI:=false}" = true ]; then
    { IFS= read -r version && IFS= read -r highlights && IFS= read -r hours } < info.txt
  else
    echo Version:
    read -r version

    echo Highlights:
    read -r highlights

    echo Hours taken:
    read -r hours
  fi

  ./deploy.sh "${version}" "${highlights}"
  ./announce.sh "${version}" "${highlights}" "${hours}"
fi

printf "\n"
