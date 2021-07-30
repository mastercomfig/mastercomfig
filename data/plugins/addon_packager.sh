#!/usr/bin/env bash
cd ./config/addons/
for D in *; do
    if [ -d "${D}" ]; then
        vpk "${D}"
    fi
done
cd -
