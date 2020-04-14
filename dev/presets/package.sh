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
    echo "exec presets/${P}" >> $autoexec_file
    echo "exec user/define_modules" >> $autoexec_file
    echo "exec user/modules" >> $autoexec_file
    echo "exec modules.txt" >> $autoexec_file
    echo "run_modules" >> $autoexec_file
    echo "exec comfig/addons" >> $autoexec_file
    echo "exec user/autoexec" >> $autoexec_file
    echo "exec comfig/select_modules" >> $autoexec_file
done

# Fill folders with common files
for D in *; do
    if [ -d "${D}" ]; then
        cp -rf ../../config/mastercomfig/* "${D}"/
        rm -f "${D}"/cfg/server.cfg
    fi
done

# Disable dsp on very low and low
declare -a dsp_off=("very-low" "low")
for P in "${dsp_off[@]}"; do
    sed -i "/\"ConVar.dsp_off\"/ s/\"[0]*\"/\"1\"/" mastercomfig-"${P}"-preset/dxsupport_override.cfg
done

# Remove comments to save space
if [ "$release" = true ] ; then
    # remove comments, including indented comments
    find . -name "*.cfg" | xargs sed -i '/^[[:blank:]]*\/\//d;s/\/\/.*//'
    # remove leading and trailing whitespace
    find . -name "*.cfg" | xargs sed -i 's/^[[:blank:]]*//;s/[[:blank:]]*$//'
    # remove blank lines
    find . -name "*.cfg" | xargs sed -i '/^\s*$/d'
    # Package into VPK
    for D in *; do
        if [ -d "${D}" ]; then
            vpk "${D}"
        fi
    done
fi

printf "\n"
