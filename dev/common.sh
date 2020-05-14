function cleanAndPackage {
    # Remove comments to save space
    if [ "$zip_package" != true ] ; then
        # remove comments, including indented comments
        find . -name "*.cfg" -o -name "*.txt" -o -name "*.res" | xargs sed -i '/^[[:blank:]]*\/\//d;s/\/\/.*//'
        # remove leading and trailing whitespace
        find . -name "*.cfg" -o -name "*.txt" -o -name "*.res" | xargs sed -i 's/^[[:blank:]]*//;s/[[:blank:]]*$//'
        # remove blank lines
        find . -name "*.cfg" -o -name "*.txt" -o -name "*.res" | xargs sed -i '/^\s*$/d'
        # remove quotes from VDF key values TODO: don't remove empty quotes or spaced strings
        find . \( -name "mtp.cfg" -o -name "dxsupport*.cfg" -o -name "glbaseshaders*.cfg" \
         -o -name "*.txt" -and ! -name "texture_preload_list.txt" -o -name "*.res" \) -print0 | xargs -0 -I{} ../shrinkKeyValues.sh {}
        # remove CR
        find . -name "*.cfg" -o -name "*.txt" -o -name "*.res" | xargs dos2unix -q
        # Remove newlines from VDF key values
        find . -name "mtp.cfg" -o -name "dxsupport*.cfg" -o -name "glbaseshaders*.cfg" \
         -o -name "*.txt" -and ! -name "texture_preload_list.txt" -o -name "*.res" | xargs sed -i -z 's/\n/ /g'
        # remove extraneous whitespace from VDF key values
        find . -name "mtp.cfg" -o -name "dxsupport*.cfg" -o -name "glbaseshaders*.cfg" \
         -o -name "*.txt" -o -name "*.res" | xargs sed -i -e "s/[[:space:]]\+/ /g"
        # Package into VPK
        for D in *; do
            if [ -d "${D}" ]; then
                vpk "${D}"
            fi
        done
    fi
}
