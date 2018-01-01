#!/bin/bash
# Run script within the directory
BINDIR=$(dirname "$(readlink -fn "$0")")
cd "$BINDIR"

source mastercomfig-vars

# Create release

assets_url=$(curl -u $GITHUB_USERNAME:$GITHUB_TOKEN -X POST -H 'Content-type: application/json' \
  --data "{\"tag_name\":\"$1\",\"target_commitish\":\"release\",\"name\":\"$1\",\"body\":\"**Highlights:** $2\"}" \
  https://api.github.com/repos/mastercoms/tf2cfg/releases | jq '.assets_url' | sed -e 's/^"//' -e 's/"$//')
assets_url=${assets_url/api/uploads}

# Upload VPKs

for f in $(find -name '*.vpk'); do
  file=${f##*/}
  name=${file%.*}
  label=${name//-/%20}
  echo $assets_url?name=$file?label=$label
  curl -u $GITHUB_USERNAME:$GITHUB_TOKEN -X POST -H 'Content-type: application/octet-stream' \
    -T $f \
    "$assets_url?name=$file&label=$label"
done

# Upload ZIP

curl -u $GITHUB_USERNAME:$GITHUB_TOKEN -X POST -H 'Content-type: application/zip' \
  -T mastercomfig.zip \
  "$assets_url?name=mastercomfig.zip&label=mastercomfig%20ZIP"

printf "\n"
