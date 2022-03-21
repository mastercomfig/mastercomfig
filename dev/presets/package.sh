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
        printf "exec comfig/define_presets.cfg;"
        printf "preset=%s;" "${P}"
        printf "exec user/pre_comfig.cfg;"
        printf "exec comfig/comfig.cfg;"
        printf "exec user/post_comfig.cfg;"
        printf "preset;"
        printf "exec comfig/addons.cfg;"
        printf "modules_c;"
        printf "run_modules;"
        printf "exec comfig/echo.cfg;"
        printf "exec user/autoexec.cfg;exec app/autoexec.cfg;"
        printf "exec comfig/finalize.cfg"
      } > "${autoexec_file}"
    fi
  fi
done

# Fill folders with common files
mkdir mastercomfig-common-preset
cp -rf ../../config/mastercomfig/* mastercomfig-common-preset/

. ../common.sh

cleanItems

for D in *; do
  if [ -d "${D}" ] && [ "${D}" != mastercomfig-common-preset ]; then
    cp -rf mastercomfig-common-preset/* "${D}"
  fi
done

rm -rf mastercomfig-common-preset/

# Disable dsp on very low and low
declare -a dsp_off=("very-low" "low")
for P in "${dsp_off[@]}"; do
  sed -i "s/ConVar.dsp_off 0/ConVar.dsp_off 1/g" mastercomfig-"${P}"-preset/dxsupport_override.cfg
done

# Hide decals on very low
declare -a decals_depth=("very-low")
for P in "${decals_depth[@]}"; do
  sed -i "s/ConVar.mat_slopescaledepthbias_decal -0.5/ConVar.mat_slopescaledepthbias_decal 0.000001/g" mastercomfig-"${P}"-preset/dxsupport_override.cfg
done

packageItems

printf "\n"
