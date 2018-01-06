#!/bin/bash
# Run script within the directory
BINDIR=$(dirname "$(readlink -fn "$0")")
cd "$BINDIR"

# Delete old VPKs and folders
rm *.vpk -f
rm */ -rf

# Create addons
declare -a addons=("badcpu" "badgpu" "ssd" "transparent_viewmodels")

for A in "${addons[@]}"; do
    mkdir -p mastercomfig-"${A}"-addon/cfg/addons
    cp -f ../../mastercomfig/cfg/addons/"${A}".cfg mastercomfig-"${A}"-addon/cfg/addons/"${A}".cfg
done

# Package into VPK
for D in *; do
    if [ -d "${D}" ]; then
        vpk "${D}"
    fi
done

printf "\n"
