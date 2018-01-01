#!/bin/bash
# Run script within the directory
BINDIR=$(dirname "$(readlink -fn "$0")")
cd "$BINDIR"

source mastercomfig-vars

# Announce on Discord #releases

curl -X POST -H 'Content-type: application/json' \
 --data "{\"content\":\"@everyone **$1** released with $2\n\nhttps://github.com/mastercoms/tf2cfg/releases/tag/$1\"}" \
 $DISCORD_WEBHOOK

# TODO: Announce on TeamFortress.TV

post_body="[b][url=https://github.com/mastercoms/tf2cfg/releases/tag/$1]$1[/url] released with $2[/b]"
formatted_body=${post_body// /+}

#curl -X POST -H 'Content-type: application/x-www-form-urlencoded' \
#  -F "body=$formatted_body" -F 'thread_id=42867' -F "token=$TFTV_TOKEN" \
#  http://www.teamfortress.tv/post/add

echo $post_body

printf "\n"
