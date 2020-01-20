#!/bin/bash
# Run script within the directory
BINDIR=$(dirname "$(readlink -fn "$0")")
cd "$BINDIR"

# Delete old VPKs and folders
rm *.vpk -f
rm */ -rf

# Create .cfg addons
declare -a addons=("badgpu" "lowmem" "transparent-viewmodels" "flat-mouse" "experimental")

for A in "${addons[@]}"; do
    mkdir -p mastercomfig-"${A}"-addon/cfg/addons
    cp -f ../../config/cfg/addons/"${A}".cfg mastercomfig-"${A}"-addon/cfg/addons/"${A}".cfg
done

# Copy over custom addons
cp -rf ../../config/addons/* .

# Remove comments to save space
if [ "$release" = true ] ; then
    find . -name "*.cfg" | xargs sed -i '/^[[:blank:]]*\/\//d;s/\/\/.*//'
    find . -name "*.cfg" | xargs sed -i '/^[[:space:]]*$/d'
    # Package into VPK
    for D in *; do
        if [ -d "${D}" ]; then
            mkdir -p "${D}/sound"
            touch "${D}/sound/sound.cache"
            vpk "${D}"
        fi
    done
fi

printf "\n"
