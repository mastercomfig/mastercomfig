#!/bin/bash
# Run script within the directory
BINDIR=$(dirname "$(readlink -fn "$0")")
cd "$BINDIR"

# Delete old VPKs and folders
rm *.vpk -f
rm */ -rf

# Create presets
declare -a presets=("stripped" "maxperformance" "comp" "compquality" "midquality" "highquality" "maxquality")

for P in "${presets[@]}"; do
    mkdir -p mastercomfig-"${P}"-preset/cfg/presets
    cp -f ../../config/mastercomfig/cfg/presets/"${P}".cfg mastercomfig-"${P}"-preset/cfg/presets/"${P}".cfg
    preset_file=mastercomfig-"${P}"-preset/cfg/autoexec.cfg
    touch $preset_file
    echo "exec comfig" > $preset_file
    echo "exec presets/${P}" >> $preset_file
    echo "exec addons/badcpu" >> $preset_file
    echo "exec addons/badgpu" >> $preset_file
    echo "exec addons/transparent_viewmodels" >> $preset_file
    echo "exec addons/no_tutorial" >> $preset_file
    echo "exec addons/mouse_tweaks" >> $preset_file
    echo "exec custom" >> $preset_file
    unix2dos $preset_file
done

# Create no preset VPK
mkdir -p mastercomfig-no-preset/cfg
no_preset_file="mastercomfig-no-preset/cfg/autoexec.cfg"
touch $no_preset_file
echo "exec comfig" > $no_preset_file
echo "exec addons/badcpu" >> $no_preset_file
echo "exec addons/badgpu" >> $no_preset_file
echo "exec addons/transparent_viewmodels" >> $no_preset_file
echo "exec addons/no_tutorial" >> $preset_file
echo "exec addons/mouse_tweaks" >> $preset_file
echo "exec custom" >> $no_preset_file
unix2dos $no_preset_file

# Fill folders with common files
for D in *; do
    if [ -d "${D}" ]; then
        cp -f ../../config/mastercomfig/cfg/*.cfg "${D}"/cfg/
        cp -rf ../../config/mastercomfig/cfg/mm/ "${D}"/cfg
        cp -f ../../config/mastercomfig/dxsupport_override.cfg "${D}"/dxsupport_override.cfg
        cp -f ../../config/mastercomfig/glbaseshaders.cfg "${D}"/glbaseshaders.cfg
        cp -f ../../config/mastercomfig/texture_preload_list.txt "${D}"/texture_preload_list.txt
        mkdir -p "${D}"/scripts
        cp -f ../../config/mastercomfig/scripts/client_precache.txt "${D}"/scripts/client_precache.txt
        cp -f ../../config/mastercomfig/scripts/extra_models.txt "${D}"/scripts/extra_models.txt
    fi
done

declare -a overriden_presets=("maxperformance" "stripped" "maxquality")
declare -a override_combos=("01-mastercomfig_maxperformance 01-mastercomfig_no_soundscapes 01-mastercomfig_no_pyroland" "01-mastercomfig_maxperformance 01-mastercomfig_no_footsteps 01-mastercomfig_no_soundscapes 01-mastercomfig_no_pyroland" "01-mastercomfig_maxquality")

# Preset specific overrides
for ((i=0; i<${#overriden_presets[*]}; i++));
do
    folder="mastercomfig-${overriden_presets[i]}-preset/"
    for override in ${override_combos[i]}
    do
        cp -rf "../../config/$override/"* $folder
    done
done

# Package into VPK
for D in *; do
    if [ -d "${D}" ]; then
        vpk "${D}"
    fi
done

printf "\n"
