#!/bin/bash
# Run script within the directory
BINDIR=$(dirname "$(readlink -fn "$0")")
cd "$BINDIR"

# Delete old autoexecs
rm *.cfg -f

# Create preset autoexec combos and names
declare -a names=("no-preset" "midquality" "comp" "compquality" "maxperformance" "stripped" "maxquality" "highquality" "igpu")
declare -a combos=("" "presets/midquality" "presets/comp" "presets/compquality" "presets/maxperformance" "presets/stripped" "presets/maxquality" "presets/highquality" "presets/maxperformance addons/badgpu")

# Create autoexecs from combos
for ((i=0; i<${#names[*]}; i++));
do
    cat "../../config/mastercomfig/cfg/comfig.cfg" >> "mastercomfig-${names[i]}.cfg"
    for component in ${combos[i]}
    do
        cat "../../config/mastercomfig/cfg/$component.cfg" >> "mastercomfig-${names[i]}.cfg"
    done
    dos2unix "mastercomfig-${names[i]}.cfg"
done

printf "\n"
