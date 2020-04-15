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
            echo "alias preset \"exec presets/${P}\"" > $autoexec_file
            echo "exec user/pre_comfig" >> $autoexec_file
            echo "exec comfig/comfig" >> $autoexec_file
            echo "preset" >> $autoexec_file
            echo "exec user/define_modules" >> $autoexec_file
            echo "exec user/modules" >> $autoexec_file
            echo "exec modules.txt" >> $autoexec_file
            echo "run_modules" >> $autoexec_file
            echo "exec comfig/addons" >> $autoexec_file
            echo "exec user/autoexec" >> $autoexec_file
            echo "exec comfig/select_modules" >> $autoexec_file
        fi
    fi
done

# Fill folders with common files
for D in *; do
    if [ -d "${D}" ]; then
        cp -rf ../../config/mastercomfig/* "${D}"/
        rm -f "${D}"/cfg/server.cfg
    fi
done

. ../common.sh

cleanAndPackage

printf "\n"
