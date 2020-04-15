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
if [ "$zip_package" != true ] ; then
    # remove comments, including indented comments
    find . -name "*.cfg" -o -name "*.txt" -o -name "*.res" | xargs sed -i '/^[[:blank:]]*\/\//d;s/\/\/.*//'
    # remove leading and trailing whitespace
    find . -name "*.cfg" -o -name "*.txt" -o -name "*.res" | xargs sed -i 's/^[[:blank:]]*//;s/[[:blank:]]*$//'
    # remove blank lines
    find . -name "*.cfg" -o -name "*.txt" -o -name "*.res" | xargs sed -i '/^\s*$/d'
    # remove quotes from VDF key values TODO: don't remove empty quotes from surfaceproperties.txt
    find . -name "mtp.cfg" -o -name "dxsupport*.cfg" -o -name "glbaseshaders*.cfg" \
     -o -name "*.txt" -o -name "*.res" -and ! -name "surfaceproperties.txt" | xargs sed -i 's/"//g'
    # remove tabs from VDF key values
    find . -name "mtp.cfg" -o -name "dxsupport*.cfg" -o -name "glbaseshaders*.cfg" \
     -o -name "*.txt" -o -name "*.res" | xargs sed -e "s/[[:space:]]\+/ /g"
    # remove EOF
    find . -name "*.cfg" -o -name "*.txt" -o -name "*.res" | xargs perl -pi -e 'chomp if eof'
    # Package into VPK
    for D in *; do
        if [ -d "${D}" ]; then
            vpk "${D}"
        fi
    done
fi

printf "\n"
