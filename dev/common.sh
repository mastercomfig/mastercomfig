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
    # Remove newlines from VDF key values
    find . \( -name "mtp.cfg" -o -name "dxsupport*.cfg" -o -name "glbaseshaders*.cfg" \
     -o -name "*.txt" -and ! -name "texture_preload_list.txt" -o -name "*.res" \) -print0 | xargs -0 sed -i -z 's/\n/ /g'
    # remove extraneous whitespace from VDF key values
    find . \( -name "mtp.cfg" -o -name "dxsupport*.cfg" -o -name "glbaseshaders*.cfg" \
     -o -name "*.txt" -o -name "*.res" \) -print0 | xargs -0 sed -i -e "s/[[:space:]]\+/ /g"
  fi
}

function uploadFileToGitHub {
  gh release upload --clobber ${release_tag} "${1}#${2}"
}

function uploadAssets {
  if [ -z "${release_tag}" ]; then
    echo "Release tag unset. Not continuing."
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

  uploadFileToGitHub "./template/template.zip" "overrides template"
  uploadFileToGitHub "./comfig/modules_template.cfg" "modules template"
  uploadFileToGitHub "./comfig/autoexec_template.cfg" "overrides autoexec template"
  uploadFileToGitHub "./comfig/mastercomfig.zip" "mastercomfig zip package"
  uploadFileToGitHub "./comfig/autoexec.cfg" "full autoexec"
}

function packageItems {
  if [ "${zip_package:=false}" != true ] ; then
      # Package into VPK
      if hash parallel &> /dev/null ; then
        ls -d */ | parallel vpk {}
      else
        for D in *; do
            if [ -d "${D}" ]; then
                vpk "${D}"
            fi
        done
      fi
  fi
}

function cleanAndPackage {
  cleanItems
  packageItems
}
