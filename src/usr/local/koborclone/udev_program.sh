#!/bin/sh

# udev kills slow scripts
if [ "$SETSID" != "1" ]; then
    SETSID=1 setsid "$0" "$@" &
    exit
fi

# load config
. "$(dirname "$0")/config.sh"

# create work dirs
[ ! -e "$LOGS" ] && mkdir -p "$LOGS" >/dev/null 2>&1
[ ! -e "$LIB" ] && mkdir -p "$LIB" >/dev/null 2>&1

# output to log
"$KC_HOME/koborclone.sh" > "$LOGS/log.txt" 2>&1 &
