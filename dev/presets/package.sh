#!/bin/bash
# Run script within the directory
BINDIR=$(dirname "$(readlink -fn "$0")")
cd "$BINDIR"

# Delete old VPKs and folders
rm *.vpk -f
rm */ -rf

for F in ../../config/cfg/presets/*; do
    if [ -f "${F}" ]; then
        ext=${F##*.}
        if [ "$ext" = cfg ]; then
            P=$(basename $F .$ext)
            mkdir -p mastercomfig-"${P}"-preset/cfg/presets
            cp -f ../../config/cfg/presets/*.cfg mastercomfig-"${P}"-preset/cfg/presets
            preset_file=mastercomfig-"${P}"-preset/cfg/presets/${P}.cfg
            autoexec_file=mastercomfig-"${P}"-preset/cfg/autoexec.cfg
            echo "alias preset \"exec presets/${P}.cfg\"" > $autoexec_file
            echo "exec user/pre_comfig.cfg" >> $autoexec_file
            echo "exec comfig/comfig.cfg" >> $autoexec_file
            echo "preset" >> $autoexec_file
            echo "exec user/define_modules.cfg" >> $autoexec_file
            echo "exec comfig/addons.cfg" >> $autoexec_file
            echo "exec user/modules.cfg" >> $autoexec_file
            echo "exec modules.txt" >> $autoexec_file
            echo "echo test" >> $autoexec_file
            echo "run_modules" >> $autoexec_file
            echo "echo test2" >> $autoexec_file
            echo "exec comfig/addons.cfg" >> $autoexec_file
            echo "echo test3" >> $autoexec_file
            echo "exec user/autoexec.cfg" >> $autoexec_file
            echo "echo test4" >> $autoexec_file
            echo "exec comfig/select_modules.cfg" >> $autoexec_file
            echo "echo test5" >> $autoexec_file
            echo "exec comfig/finalize.cfg" >> $autoexec_file
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
