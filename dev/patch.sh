#!/bin/bash
# Run script within the directory
BINDIR=$(dirname "$(readlink -fn "$0")")
cd "${BINDIR}" || exit 2

. ./mastercomfig-vars

# Get latest release version
response=$(curl "https://api.github.com/repos/${GH_REPO}/releases/latest")
assets_url=$(echo "${response}" | jq '.assets_url' | sed -e 's/^"//' -e 's/"$//' | sed "s/\bapi\b/uploads/g")

if [ "${assets_url}" == null ]; then
  echo "Assets URL null. Not continuing."
  exit 3
fi

# Upload files
uploadFileToGitHub () {
    file=$1
    name=${1##*/}
    label=${2// /%20}
    url="${assets_url}?name=${name}&label=${label}"
    echo "${url}"
    curl -u "${GH_USERNAME}:${GH_TOKEN}" -X POST -H 'Content-type: application/octet-stream' \
      -T "${file}" \
      "${url}"
}

while IFS= read -r -d '' f
do
    basename=${f##*/}
    basename=${basename%.*}
    basename=${basename//-/ }
    uploadFileToGitHub "${f}" "${basename}"
    basename=""
done <   <(find . -name '*.vpk' -print0)

uploadFileToGitHub "./comfig/autoexec_template.cfg" "user config template"

uploadFileToGitHub "./comfig/autoexec.cfg" "empty autoexec file"

uploadFileToGitHub "./comfig/modules.cfg" "empty modules file"

uploadFileToGitHub "./comfig/modules_template.cfg" "modules template"
uploadFileToGitHub "./comfig/mastercomfig.zip" "mastercomfig zip package"

tag=$(echo "${response}" | jq '.tag_name' | sed -e 's/^"//' -e 's/"$//')

git tag -d "${tag}"
git tag "${tag}"

git push -f origin :"${tag}"
git push origin "${tag}"

printf "\n"
