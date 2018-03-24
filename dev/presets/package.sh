#!/bin/bash
# Run script within the directory
BINDIR=$(dirname "$(readlink -fn "$0")")
cd "$BINDIR"

# Delete old VPKs and folders
rm *.vpk -f
rm */ -rf

# Create presets
declare -a presets=("stripped" "maxperformance" "comp" "compquality" "default" "midquality" "maxquality")

for P in "${presets[@]}"; do
    mkdir -p mastercomfig-"${P}"/cfg/presets
    cp -f ../../config/mastercomfig/cfg/presets/"${P}".cfg mastercomfig-"${P}"/cfg/presets/"${P}".cfg
    preset_file=mastercomfig-"${P}"/cfg/autoexec.cfg
    touch $preset_file
    echo "exec comfig" > $preset_file
    echo "exec presets/${P}" >> $preset_file
    echo "exec addons/badcpu" >> $preset_file
    echo "exec addons/badgpu" >> $preset_file
    echo "exec addons/ssd" >> $preset_file
    echo "exec addons/transparent_viewmodels" >> $preset_file
    echo "exec custom" >> $preset_file
    unix2dos $preset_file
done

# Create custom preset
mkdir -p mastercomfig-custom/cfg
custom_file="mastercomfig-custom/cfg/autoexec.cfg"
touch $custom_file
echo "exec comfig" > $custom_file
echo "exec addons/badcpu" >> $custom_file
echo "exec addons/badgpu" >> $custom_file
echo "exec addons/ssd" >> $custom_file
echo "exec addons/transparent_viewmodels" >> $custom_file
echo "exec custom" >> $custom_file
unix2dos $custom_file

# Fill folders with common files
for D in *; do
    if [ -d "${D}" ]; then
        cp -f ../../config/mastercomfig/cfg/*.cfg "${D}"/cfg/
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
    folder="mastercomfig-${overriden_presets[i]}/"
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
