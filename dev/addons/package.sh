#!/bin/bash
# Run script within the directory
BINDIR=$(dirname "$(readlink -fn "$0")")
cd "${BINDIR}" || exit 2

# Delete old VPKs and folders
rm -f -- *.vpk
rm -rf -- */

addons_cfg_path=../../config/mastercomfig/cfg/comfig/addons.cfg
rm -f "${addons_cfg_path}"
touch "${addons_cfg_path}"

for F in ../../config/cfg/addons/*; do
    if [ -f "${F}" ]; then
        ext=${F##*.}
        if [ "${ext}" = cfg ]; then
            A=$(basename "${F}" ."${ext}")
            mkdir -p mastercomfig-"${A}"-addon/cfg/addons
            cp -f ../../config/cfg/addons/"${A}".cfg mastercomfig-"${A}"-addon/cfg/addons/"${A}".cfg
            echo "exec addons/${A}.cfg" >> $addons_cfg_path
        fi
    fi
done

# Copy over custom addons
cp -rf ../../config/addons/* .

. ../common.sh

cleanAndPackage

printf "\n"
