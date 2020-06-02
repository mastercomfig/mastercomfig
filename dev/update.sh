#!/bin/bash
# Run script within the directory
BINDIR=$(dirname "$(readlink -fn "$0")")
cd "$BINDIR"

git switch release
(git pull && git merge develop && git push) || (echo "Merge failed. Please push manually once resolved." && exit 1)
