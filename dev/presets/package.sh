#!/bin/bash
# Run script within the directory
BINDIR=$(dirname "$(readlink -fn "$0")")
cd "$BINDIR"

# Delete old VPKs and folders
rm *.vpk -f
rm */ -rf

# Create folders

# Create default
mkdir -p mastercomfig-default/cfg
touch mastercomfig-default/cfg/autoexec.cfg
echo -e "exec comfig\r\nexec addons/badcpu\r\nexec addons/badgpu\r\nexec addons/ssd\r\nexec addons/transparent_viewmodels\r\nexec custom\r\n" > mastercomfig-default/cfg/autoexec.cfg

# Create presets
declare -a presets=("comp" "compquality" "maxperformance" "stripped" "maxquality" "midquality")

for P in "${presets[@]}"; do
    mkdir -p mastercomfig-"${P}"/cfg/presets
    cp -f ../../mastercomfig/cfg/presets/"${P}".cfg mastercomfig-"${P}"/cfg/presets/"${P}".cfg
    touch mastercomfig-"${P}"/cfg/autoexec.cfg
    echo -e "exec comfig\r\nexec presets/${P}\r\nexec addons/badcpu\r\nexec addons/badgpu\r\nexec addons/ssd\r\nexec addons/transparent_viewmodels\r\nexec custom\r\n" > mastercomfig-"${P}"/cfg/autoexec.cfg
done

# Fill folders with common files
for D in *; do
    if [ -d "${D}" ]; then
        cp -f ../../mastercomfig/cfg/comfig.cfg "${D}"/cfg/comfig.cfg
        cp -f ../../mastercomfig/cfg/listenserver.cfg "${D}"/cfg/listenserver.cfg
        cp -f ../../mastercomfig/dxsupport_override.cfg "${D}"/dxsupport_override.cfg
        cp -f ../../mastercomfig/glbaseshaders.cfg "${D}"/glbaseshaders.cfg
        cp -f ../../mastercomfig/texture_preload_list.txt "${D}"/texture_preload_list.txt
        vpk "${D}"
    fi
done

# Overwrite common files
cp -f ../../01-mastercomfig_dx_maxperformance/dxsupport_override.cfg mastercomfig-maxperformance/dxsupport_override.cfg
cp -f ../../01-mastercomfig_dx_maxperformance/dxsupport_override.cfg mastercomfig-stripped/dxsupport_override.cfg
cp -f ../../01-mastercomfig_dx_maxquality/dxsupport_override.cfg mastercomfig-maxquality/dxsupport_override.cfg

# Package into VPK
for D in *; do
    if [ -d "${D}" ]; then
        vpk "${D}"
    fi
done

printf "\n"
