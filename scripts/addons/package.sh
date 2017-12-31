BINDIR=$(dirname "$(readlink -fn "$0")")
cd "$BINDIR"

rm *.vpk

declare -a addons=("badcpu" "badgpu" "stripped")

for A in "${addons[@]}"; do
    mkdir -p mastercomfig-"${A}"-addon/cfg/addons
    cp -f ~/sources/valve/tf2cfg/mastercomfig/cfg/addons/"${A}".cfg mastercomfig-"${A}"-addon/cfg/addons/"${A}".cfg
done

for D in *; do
    if [ -d "${D}" ]; then
        vpk "${D}"
    fi
done
