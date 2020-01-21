#!/bin/bash
# Run script within the directory
BINDIR=$(dirname "$(readlink -fn "$0")")
cd "$BINDIR"

./package.sh
rm -f comfig/mastercomfig.zip
zip -9r comfig/mastercomfig.zip addons/ presets/ -x "*.sh"

export release="true"

./package.sh

echo Version:
read version

echo Highlights:
read highlights

./deploy.sh $version "$highlights"
./announce.sh $version "$highlights"

printf "\n"
