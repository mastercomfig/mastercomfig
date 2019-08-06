#!/bin/bash
# Run script within the directory
BINDIR=$(dirname "$(readlink -fn "$0")")
cd "$BINDIR"

. ./mastercomfig-vars

# Get old release version
old_release=$(curl https://api.github.com/repositories/69422496/releases/latest | jq '.tag_name' | sed -e 's/^"//' -e 's/"$//')

# Create release

assets_url=$(curl -u $GH_USERNAME:$GH_TOKEN -X POST -H 'Content-type: application/json' \
  --data "{\"tag_name\":\"$1\",\"target_commitish\":\"release\",\"name\":\"$1\",\"body\":\"**Highlights:** $2\n\n[Support me](https://docs.mastercomfig.com/en/latest/support_me/)\n\n[**Initial Setup Instructions**](https://docs.mastercomfig.com/en/$1/setup/clean_up/)\n\n[**Update Instructions**](https://docs.mastercomfig.com/en/$1/next_steps/update/)\n\n[Documentation](https://docs.mastercomfig.com/en/$1/)\n\n***\n\n***\n\n[View the code changes](https://github.com/mastercoms/mastercomfig/compare/${old_release}...$1)\"}" \
  https://api.github.com/repositories/69422496/releases | jq '.assets_url' | sed -e 's/^"//' -e 's/"$//')
assets_url=$(echo $assets_url | sed "s/\bapi\b/uploads/g")

# Upload VPKs

for f in $(find -name '*.vpk'); do
  file=${f##*/}
  name=${file%.*}
  label=${name//-/%20}
  echo $assets_url?name=$file?label=$label
  curl -u $GH_USERNAME:$GH_TOKEN -X POST -H 'Content-type: application/octet-stream' \
    -T $f \
    "$assets_url?name=$file&label=$label%20VPK"
done

f="comfig/autoexec.cfg"
file="autoexec.cfg"
label="user%20config%20template"
curl -u $GH_USERNAME:$GH_TOKEN -X POST -H 'Content-type: application/octet-stream' \
  -T $f \
  "$assets_url?name=$file&label=$label"

printf "\n"
