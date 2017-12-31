BINDIR=$(dirname "$(readlink -fn "$0")")
cd "$BINDIR"

rm *.vpk

declare -a presets=("comp" "compquality" "maxperformance" "maxquality" "midquality")

for P in "${presets[@]}"; do
    mkdir -p mastercomfig-"${P}"/cfg/presets
    cp -f ../../mastercomfig/cfg/presets/"${P}".cfg mastercomfig-"${P}"/cfg/presets/"${P}".cfg
    touch mastercomfig-"${P}"/cfg/autoexec.cfg
    echo -e "exec comfig\r\nexec presets/${P}\r\nexec addons/badcpu\r\nexec addons/badgpu\r\nexec addons/stripped\r\nexec custom\r\n" > mastercomfig-"${P}"/cfg/autoexec.cfg
done

for D in *; do
    if [ -d "${D}" ]; then
        cp -f ../../mastercomfig/cfg/comfig.cfg "${D}"/cfg/comfig.cfg
        cp -f ../../mastercomfig/dxsupport_override.cfg "${D}"/dxsupport_override.cfg
        cp -f ../../mastercomfig/texture_preload_list.txt "${D}"/texture_preload_list.txt
        vpk "${D}"
    fi
done

cp -f ../../01-mastercomfig_dx_maxperformance/dxsupport_override.cfg mastercomfig-maxperformance/dxsupport_override.cfg
cp -f ../../01-mastercomfig_dx_maxquality/dxsupport_override.cfg mastercomfig-maxquality/dxsupport_override.cfg

for D in *; do
    if [ -d "${D}" ]; then
        vpk "${D}"
    fi
done
