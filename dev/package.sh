#!/bin/bash
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

if [ "${prerelease:=false}" == true ] && [ "${zip_package:=false}" == false ]; then
  mkdir prerelease
  mkdir prerelease/presets
  mkdir prerelease/addons
  mkdir prerelease/comfig
  mkdir prerelease/template
  cp presets/*.vpk prerelease/presets
  cp addons/*.vpk prerelease/addons
  cp comfig/*.cfg prerelease/comfig
  cp comfig/*.zip prerelease/comfig
  cp template/*.zip prerelease/template
  (cd prerelease && zip -9r mastercomfig.zip addons/ presets/ comfig/ template/)
fi

printf "\n"
