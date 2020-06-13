#!/bin/bash
# Run script within the directory
BINDIR=$(dirname "$(readlink -fn "$0")")
cd "${BINDIR}" || exit 2

# Delete old VPKs and folders
rm -f -- *.vpk
rm -rf -- */

for F in ../../config/cfg/presets/*; do
    if [ -f "${F}" ]; then
        ext=${F##*.}
        if [ "${ext}" = cfg ]; then
            P=$(basename "${F}" ."${ext}")
            mkdir -p mastercomfig-"${P}"-preset/cfg/presets
            cp -f ../../config/cfg/presets/*.cfg mastercomfig-"${P}"-preset/cfg/presets
            autoexec_file=mastercomfig-"${P}"-preset/cfg/autoexec.cfg
            {
              printf "alias preset\"exec presets/%s.cfg\";" "${P}"
              printf "exec user/pre_comfig.cfg;"
              printf "exec comfig/comfig.cfg;"
              printf "preset;"
              printf "exec comfig/addons_setup.cfg;"
              printf "exec comfig/addons.cfg;"
              printf "exec user/modules.cfg;"
              printf "run_modules;"
              printf "exec comfig/addons.cfg;"
              printf "exec user/autoexec.cfg;"
              printf "exec comfig/finalize.cfg"
            } > "${autoexec_file}"
        fi
    fi
done

# Fill folders with common files
for D in *; do
    if [ -d "${D}" ]; then
        cp -rf ../../config/mastercomfig/* "${D}"/
    fi
done

# Disable dsp on very low and low
declare -a dsp_off=("very-low" "low")
for P in "${dsp_off[@]}"; do
    sed -i "/\"ConVar.dsp_off\"/ s/\"[0]*\"/\"1\"/" mastercomfig-"${P}"-preset/dxsupport_override.cfg
done

# Hide decals on very low
declare -a decals_depth=("very-low")
for P in "${decals_depth[@]}"; do
    sed -i "/\"ConVar.mat_slopescaledepthbias_decal\"/ s/\"[-0.5]*\"/\"0.000001\"/" mastercomfig-"${P}"-preset/dxsupport_override.cfg
done

. ../common.sh

cleanAndPackage

printf "\n"
