#!/bin/bash

set -e

# Run script within the directory
BINDIR=$(dirname "$(readlink -fn "$0")")
cd "${BINDIR}" || exit 2

git pull
git push

. ./mastercomfig-vars

# Get latest release version
response=$(curl "https://api.github.com/repos/${GH_REPO}/releases/latest")
export assets_url=$(echo "${response}" | jq '.assets_url' | sed -e 's/^"//' -e 's/"$//' | sed "s/\bapi\b/uploads/g")

# Upload files
. ./common.sh

uploadAssets

printf "\n"

tag=$(echo "${response}" | jq '.tag_name' | sed -e 's/^"//' -e 's/"$//')

git tag -d "${tag}"
git tag "${tag}"

git push -f origin :"${tag}"
git push origin "${tag}"

printf "\n"
