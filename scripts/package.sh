BINDIR=$(dirname "$(readlink -fn "$0")")
cd "$BINDIR"

./addons/package.sh
./presets/package.sh
