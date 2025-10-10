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
  printf "exec app/pre_init.cfg;exec overrides/pre_init.cfg;"
  printf "exec comfig/comfig.cfg;"
  printf "exec app/setup_hook.cfg;exec overrides/setup_hook.cfg;"
  printf "preset;"
  printf "modules_c;"
  printf "run_modules;"
  printf "exec comfig/echo.cfg;"
  printf "exec app/addons.cfg;"
  printf "exec app/autoexec.cfg;exec overrides/autoexec.cfg;"
  printf "exec comfig/finalize.cfg"
} > "${autoexec_file}"

# Fill folders with common files
cp -rf ../../config/mastercomfig/* mastercomfig-base/

. ../common.sh

cleanItems

packageItems

printf "\n"
