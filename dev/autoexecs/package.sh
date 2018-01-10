#!/bin/bash
# Run script within the directory
BINDIR=$(dirname "$(readlink -fn "$0")")
cd "$BINDIR"

# Delete old autoexecs
rm *.cfg -f

# Create preset autoexec combos and names
declare -a names=("default" "comp" "compquality" "maxperformance" "stripped" "maxquality" "midquality" "badgpu")
declare -a combos=("" "../../mastercomfig/cfg/presets/comp.cfg" "../../mastercomfig/cfg/presets/compquality.cfg" "../../mastercomfig/cfg/presets/maxperformance.cfg" "../../mastercomfig/cfg/presets/stripped.cfg" "../../mastercomfig/cfg/presets/maxquality.cfg" "../../mastercomfig/cfg/presets/midquality.cfg" "../../mastercomfig/cfg/presets/maxperformance.cfg ../../mastercomfig/cfg/addons/badgpu.cfg")

# Create autoexecs from combos
for ((i=0; i<${#names[*]}; i++));
do
    cat "../../mastercomfig/cfg/comfig.cfg" >> "${names[i]}.cfg"
    for component in ${combos[i]}
    do
        cat $component >> "${names[i]}.cfg"
    done
done

printf "\n"
