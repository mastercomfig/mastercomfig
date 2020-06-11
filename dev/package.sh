#!/bin/bash
# Run script within the directory
BINDIR=$(dirname "$(readlink -fn "$0")")
cd "$BINDIR"

rm -rf prerelease

# Execute package scripts
for D in *; do
    if [ -d "${D}" ]; then
        echo "Packaging ${D}"
        ${D}/package.sh
    fi
done

if [ "$prerelease" == true ]; then
  mkdir prerelease
  mkdir prerelease/presets
  mkdir prerelease/addons
  mkdir prerelease/comfig
  cp presets/*.vpk prerelease/presets
  cp addons/*.vpk prerelease/addons
  cp comfig/*.cfg prerelease/comfig
  cp comfig/*.zip prerelease/comfig
  zip -9r prerelease/mastercomfig.zip addons/ presets/ comfig/
fi

printf "\n"
