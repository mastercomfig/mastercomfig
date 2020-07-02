#!/bin/bash
# Run script within the directory
BINDIR=$(dirname "$(readlink -fn "$0")")
cd "${BINDIR}" || exit 2

. ./mastercomfig-vars

# Get old release version
old_release=$(curl "https://api.github.com/repos/${GH_REPO}/releases/latest")
old_release=$(echo "${old_release}" | jq '.tag_name' | sed -e 's/^"//' -e 's/"$//')

# Create release
assets_url=$(curl -u "${GH_USERNAME}:${GH_TOKEN}" -X POST -H 'Content-type: application/json' \
  --data "{\"tag_name\":\"$1\",\"target_commitish\":\"release\",\"name\":\"$1\",\"body\":\"**Highlights:** $2\n\n[**Support me:**](https://docs.mastercomfig.com/en/latest/support_me/) Learn how you can support more updates to mastercomfig!\n\n[**Early Access:**](https://ko-fi.com/mastercoms/shop) Get early access to more frequent mastercomfig updates.\n\n[**How to install:**](https://docs.mastercomfig.com/en/latest/setup/install/) Instructions on setting up mastercomfig initially and get it working with your custom files.\n\n[**How to update:**](https://docs.mastercomfig.com/en/latest/next_steps/update/) Instructions on updating mastercomfig after you've already installed it.\n\n---\n\n---\n\n[View the code changes](https://github.com/mastercomfig/mastercomfig/compare/${old_release}...$1)\"}" \
  "https://api.github.com/repos/${GH_REPO}/releases")
export assets_url=$(echo "${assets_url}" | jq '.assets_url' | sed -e 's/^"//' -e 's/"$//' | sed "s/\bapi\b/uploads/g")

# Upload files
. ./common.sh

uploadAssets

printf "\n"
