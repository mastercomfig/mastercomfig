#!/bin/bash
# Run script within the directory
BINDIR=$(dirname "$(readlink -fn "$0")")
cd "${BINDIR}" || exit 2

# Delete old VPKs and folders
rm -f -- *.vpk
rm -rf -- */

addons_setup_cfg_path=../../config/mastercomfig/cfg/comfig/addons_setup.cfg
addons_cfg_path=../../config/mastercomfig/cfg/comfig/addons.cfg
rm -f "${addons_setup_cfg_path}" "${addons_cfg_path}"
touch "${addons_setup_cfg_path}" "${addons_cfg_path}"

declare -A addon_alias_map
addon_alias_map[disable-pyroland]="disable-pyroland"
addon_alias_map[flat-mouse]="flat-mouse"
addon_alias_map[lowmem]="lowmem"
addon_alias_map[no-footsteps]="no-footsteps"
addon_alias_map[no-soundscapes]="no-soundscapes"
addon_alias_map[no-tutorial]="no-tutorial"
addon_alias_map[null-canceling-movement]="null-movement"
addon_alias_map[opengl]="opengl"
addon_alias_map[transparent-viewmodels]="transparent-vm"

for F in ../../config/cfg/addons/*; do
    if [ -f "${F}" ]; then
        ext=${F##*.}
        if [ "${ext}" = cfg ]; then
            A=$(basename "${F}" ."${ext}")
            mkdir -p mastercomfig-"${A}"-addon/cfg/addons
            cp -f ../../config/cfg/addons/"${A}".cfg mastercomfig-"${A}"-addon/cfg/addons/"${A}".cfg
            {
              echo "alias addon_${addon_alias_map[${A}]}"
              echo "exec addons/${A}.cfg"
            } >> "${addons_setup_cfg_path}"
            echo "addon_${addon_alias_map[${A}]}" >> $addons_cfg_path
        fi
    fi
done

# Copy over custom addons
cp -rf ../../config/addons/* .

. ../common.sh

cleanAndPackage

printf "\n"
