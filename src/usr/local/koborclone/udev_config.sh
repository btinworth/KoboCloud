#!/bin/sh

# load config
. "$(dirname "$0")/config.sh"

# create work dirs
[ ! -e "$LOGS" ] && mkdir -p "$LOGS" >/dev/null 2>&1
[ ! -e "$LIB" ] && mkdir -p "$LIB" >/dev/null 2>&1

if [ ! -e "$USER_CONFIG" ]; then
  if [ -e "$USER_CONFIG_TEMPLATE" ]; then
    cp "$USER_CONFIG_TEMPLATE" "$USER_CONFIG"
  else
    : > "$USER_CONFIG"
  fi
fi

if [ ! -e "$RCLONE_CONFIG" ]; then
  if [ -e "$RCLONE_CONFIG_TEMPLATE" ]; then
    cp "$RCLONE_CONFIG_TEMPLATE" "$RCLONE_CONFIG"
  else
    : > "$RCLONE_CONFIG"
  fi
fi
