#!/bin/bash
# Run script within the directory
BINDIR=$(dirname "$(readlink -fn "$0")")
cd "$BINDIR"

# Delete old VPKs and folders
rm *.vpk -f
rm */ -rf

# Create presets
declare -a presets=("very-low" "low" "medium-low" "medium" "medium-high" "high" "ultra")

for P in "${presets[@]}"; do
    mkdir -p mastercomfig-"${P}"-preset/cfg/presets
    cp -f ../../config/cfg/presets/"${P}".cfg mastercomfig-"${P}"-preset/cfg/presets/"${P}".cfg
    preset_file=mastercomfig-"${P}"-preset/cfg/presets/${P}.cfg
    sed -i '/^[[:blank:]]*\/\//d;s/\/\/.*//' $preset_file
    autoexec_file=mastercomfig-"${P}"-preset/cfg/autoexec.cfg
    touch $autoexec_file
    echo "exec comfig/comfig" > $autoexec_file
    echo "exec comfig/select_modules" >> $autoexec_file
    echo "exec presets/${P}" >> $autoexec_file
    echo "exec comfig/addons" >> $autoexec_file
    echo "exec user/modules" >> $autoexec_file
    echo "exec modules.log" >> $autoexec_file
    echo "run_modules" >> $autoexec_file
    echo "exec user/autoexec" >> $autoexec_file
    echo "exec comfig/finalize" >> $autoexec_file
done

# Fill folders with common files
for D in *; do
    if [ -d "${D}" ]; then
        cp -rf ../../config/mastercomfig/* "${D}"/
        rm -f "${D}"/cfg/server.cfg
    fi
done

find . -name "*.cfg" | xargs sed -i '/^[[:blank:]]*\/\//d;s/\/\/.*//'
find . -name "*.cfg" | xargs sed -i '/^[[:space:]]*$/d'

declare -a overriden_presets=("low" "very-low" "ultra")
declare -a override_combos=("low" "low" "ultra")

# Preset specific overrides
for ((i=0; i<${#overriden_presets[*]}; i++));
do
    folder="mastercomfig-${overriden_presets[i]}-preset/"
    for override in ${override_combos[i]}
    do
        cp -rf "../../config/overrides/$override/"* $folder
    done
done

# Package into VPK
for D in *; do
    if [ -d "${D}" ]; then
        vpk "${D}"
    fi
done

printf "\n"
