#!/bin/bash
# Run script within the directory
BINDIR=$(dirname "$(readlink -fn "$0")")
cd "${BINDIR}" || exit 2

# Delete old VPKs and folders
rm -f -- *.vpk
rm -rf -- */

mkdir -p mastercomfig-base/cfg/presets
cp -f ../../config/cfg/presets/*.cfg mastercomfig-base/cfg/presets
autoexec_file=mastercomfig-base/cfg/autoexec.cfg
{
  printf "exec comfig/define_presets.cfg;"
  printf "exec app/pre_comfig.cfg;exec overrides/pre_comfig.cfg;"
  printf "exec comfig/comfig.cfg;"
  printf "exec app/setup_hook.cfg;exec overrides/setup_hook.cfg;"
  printf "preset;"
  printf "exec comfig/addons.cfg;"
  printf "modules_c;"
  printf "run_modules;"
  printf "exec comfig/echo.cfg;"
  printf "exec app/autoexec.cfg;exec overrides/autoexec.cfg;"
  printf "exec comfig/finalize.cfg"
} > "${autoexec_file}"

# Fill folders with common files
cp -rf ../../config/mastercomfig/* mastercomfig-base/

. ../common.sh

cleanItems

# TODO: do in app

# Disable dsp on very low and low
#declare -a dsp_off=("very-low" "low")
#for P in "${dsp_off[@]}"; do
#  sed -i "s/ConVar.dsp_off 0/ConVar.dsp_off 1/g" mastercomfig-"${P}"-preset/dxsupport_override.cfg
#done

# Hide decals on very low
#declare -a decals_depth=("very-low")
#for P in "${decals_depth[@]}"; do
#  sed -i "s/ConVar.mat_slopescaledepthbias_decal -0.5/ConVar.mat_slopescaledepthbias_decal 0.000001/g" mastercomfig-"${P}"-preset/dxsupport_override.cfg
#done

packageItems

printf "\n"
