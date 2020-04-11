#!/bin/bash
# Run script within the directory
BINDIR=$(dirname "$(readlink -fn "$0")")
cd "$BINDIR"

./package.sh
rm -f comfig/mastercomfig.zip
zip -9r comfig/mastercomfig.zip addons/ presets/ -x "*.sh"

export release="true"

./package.sh

if [ "$patch" = true ] ; then
    ./patch.sh
else
    echo Version:
    read version

    echo Highlights:
    read highlights

    echo Hours taken:
    read hours

    ./deploy.sh $version "$highlights"
    ./announce.sh $version "$highlights" "$hours"
fi

printf "\n"
