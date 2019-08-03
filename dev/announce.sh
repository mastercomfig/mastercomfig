#!/bin/bash
# Run script within the directory
BINDIR=$(dirname "$(readlink -fn "$0")")
cd "$BINDIR"

. ./mastercomfig-vars

# Announce on Discord #releases

curl -X POST -H 'Content-type: application/json' \
 --data "{\"content\":\"@everyone **[$1](https://mastercomfig.com/download)** released with $2.\n\n[Changelog](https://github.com/mastercoms/mastercomfig/releases/tag/$1)\"}" \
 $DISCORD_WEBHOOK

# TODO: Announce on teamfortress.tv and Steam Group

post_body="[url=https://mastercomfig.com/download]$1[/url] released with $2.\n\n[url=https://github.com/mastercoms/mastercomfig/releases/tag/$1]Changelog[/url]\n"

printf "\n"

echo "BBCode announcement for tf.tv and Steam Group:"
printf "$post_body"

printf "\n"

plain_text="$1 released with $2.\n\nDownload: https://mastercomfig.com/download\n\nChangelog: https://github.com/mastercoms/mastercomfig/releases/tag/$1"

printf "\n"

echo "Plain text (for Steam Chat):"
printf "$plain_text"

printf "\n"
