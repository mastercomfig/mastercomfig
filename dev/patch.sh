#!/bin/bash
# Run script within the directory
BINDIR=$(dirname "$(readlink -fn "$0")")
cd "$BINDIR"

. ./mastercomfig-vars

# Get latest release version
response=$(curl https://api.github.com/repos/$GH_REPO/releases/latest)
assets_url=$(echo $response | jq '.assets_url' | sed -e 's/^"//' -e 's/"$//' | sed "s/\bapi\b/uploads/g")

# Upload files
uploadFileToGitHub () {
    file=$1
    name=${1##*/}
    label=${2// /%20}
    url="$assets_url?name=$name&label=$label"
    printf "$url\n"
    curl -u $GH_USERNAME:$GH_TOKEN -X POST -H 'Content-type: application/octet-stream' \
      -T $file \
      "$url"
}

for f in $(find -name '*.vpk'); do
    basename=${f##*/}
    basename=${basename%.*}
    basename=${basename//-/ }
    uploadFileToGitHub "$f" "$basename"
    basename=""
done

uploadFileToGitHub "./comfig/template.cfg" "user config template"

uploadFileToGitHub "./comfig/autoexec.cfg" "empty autoexec file"

uploadFileToGitHub "./comfig/modules.cfg" "modules template"

uploadFileToGitHub "./comfig/mastercomfig.zip" "mastercomfig zip package"

tag=$(echo $response | jq '.tag_name' | sed -e 's/^"//' -e 's/"$//')

git tag -d "$tag"
git tag "$tag"

git push -f origin :"$tag"
git push origin "$tag"

printf "\n"
