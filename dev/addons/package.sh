#!/bin/bash
# Run script within the directory
BINDIR=$(dirname "$(readlink -fn "$0")")
cd "$BINDIR"

# Delete old VPKs and folders
rm *.vpk -f
rm */ -rf

# Create .cfg addons
declare -a addons=("badgpu" "lowmem" "transparent-viewmodels" "flat-mouse" "null-cancelling-movement")

for A in "${addons[@]}"; do
    mkdir -p mastercomfig-"${A}"-addon/cfg/addons
    cp -f ../../config/cfg/addons/"${A}".cfg mastercomfig-"${A}"-addon/cfg/addons/"${A}".cfg
done

# Copy over custom addons
cp -rf ../../config/addons/* .

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
