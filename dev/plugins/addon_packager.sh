#!/usr/bin/env bash
cd ./config/addons/
for D in *; do
    printf "${D}"
    if [ -d "${D}" ]; then
        vpk "${D}"
    fi
done
cd -
