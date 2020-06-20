#!/bin/bash

function cleanItems {
  if [ "${zip_package:=false}" != true ] ; then
    # remove comments, including indented comments
    find . \( -name "*.cfg" -o -name "*.txt" -o -name "*.res" \) -print0 | xargs -0 sed -i '/^[[:blank:]]*\/\//d;s/\/\/.*//'
    # remove leading and trailing whitespace
    find . \( -name "*.cfg" -o -name "*.txt" -o -name "*.res"  \) -print0  | xargs -0 sed -i 's/^[[:blank:]]*//;s/[[:blank:]]*$//'
    # remove blank lines
    find . \( -name "*.cfg" -o -name "*.txt" -o -name "*.res" \) -print0 | xargs -0 sed -i '/^\s*$/d'
    # remove quotes from VDF key values TODO: don't remove empty quotes or spaced strings
    find . \( -name "mtp.cfg" -o -name "dxsupport*.cfg" -o -name "glbaseshaders*.cfg" \
     -o -name "*.txt" -and ! -name "texture_preload_list.txt" -o -name "*.res" \) -print0 | xargs -0 -I{} ../shrink_key_values.sh {}
    # remove CR
    find . \( -name "*.cfg" -o -name "*.txt" -o -name "*.res" \) -print0 | xargs -0 dos2unix -q
    # Remove newlines from VDF key values
    find . \( -name "mtp.cfg" -o -name "dxsupport*.cfg" -o -name "glbaseshaders*.cfg" \
     -o -name "*.txt" -and ! -name "texture_preload_list.txt" -o -name "*.res" \) -print0 | xargs -0 sed -i -z 's/\n/ /g'
    # remove extraneous whitespace from VDF key values
    find . \( -name "mtp.cfg" -o -name "dxsupport*.cfg" -o -name "glbaseshaders*.cfg" \
     -o -name "*.txt" -o -name "*.res" \) -print0 | xargs -0 sed -i -e "s/[[:space:]]\+/ /g"
  fi
}

function packageItems {
  if [ "${zip_package:=false}" != true ] ; then
      # Package into VPK
      for D in *; do
          if [ -d "${D}" ]; then
              vpk "${D}"
          fi
      done
  fi
}

function cleanAndPackage {
  cleanItems
  packageItems
}
