#!/bin/bash

set -e

# Run script within the directory
BINDIR=$(dirname "$(readlink -fn "$0")")
cd "${BINDIR}" || exit 2

git pull
git push

. ./mastercomfig-vars || echo "Using system environment for mastercomfig vars."

# Get latest release version
if [ -z ${release_tag} ]; then
    export release_tag=$(gh release view ${release_tag} --json tagName -q .tagName)
fi

# Move the tag
git tag -f "${release_tag}"
git push -f origin "${release_tag}"

printf "\n"

# Upload files
. ./common.sh

uploadAssets

printf "\n"
