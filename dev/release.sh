#!/bin/bash
# Run script within the directory
BINDIR=$(dirname "$(readlink -fn "$0")")
cd "${BINDIR}" || exit 2

./update.sh || exit 1

export zip_package="true"

./package.sh
rm -f comfig/mastercomfig.zip
zip -9r comfig/mastercomfig.zip addons/ presets/ -x "*.sh"

unset zip_package

./package.sh

if [ "${patch:=false}" = true ] ; then
    ./patch.sh
else
    echo Version:
    read -r version

    echo Highlights:
    read -r highlights

    echo Hours taken:
    read -r hours

    ./deploy.sh "${version}" "${highlights}"
    ./announce.sh "${version}" "${highlights}" "${hours}"
fi

printf "\n"
