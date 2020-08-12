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

function uploadFileToGitHub {
    file=$1
    name=${1##*/}
    label=${2// /%20}
    url="${assets_url}?name=${name}&label=${label}"
    echo "${url}"
    curl -u "${GH_USERNAME}:${GH_TOKEN}" -X POST -H 'Content-type: application/octet-stream' \
      -T "${file}" \
      "${url}"
}

function uploadAssets {
  if [ "${assets_url}" == null ]; then
    echo "Assets URL null. Not continuing."
    exit 3
  fi

  while IFS= read -r -d '' f
  do
      basename=${f##*/}
      basename=${basename%.*}
      basename=${basename//-/ }
      uploadFileToGitHub "${f}" "${basename}"
      basename=""
  done <   <(find . -name '*.vpk' -print0)

  uploadFileToGitHub "./template/template.zip" "user template"
  uploadFileToGitHub "./comfig/modules_template.cfg" "modules template"
  uploadFileToGitHub "./comfig/autoexec_template.cfg" "autoexec template"
  uploadFileToGitHub "./comfig/mastercomfig.zip" "mastercomfig zip package"
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
