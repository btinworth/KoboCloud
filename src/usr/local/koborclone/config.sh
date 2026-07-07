#!/bin/sh

KOBORCLONE_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
USER_CONFIG_TEMPLATE="$KOBORCLONE_DIR/koborclone.conf.tmpl"
RCLONE_CONFIG_TEMPLATE="$KOBORCLONE_DIR/rclone.conf.tmpl"

LOGS=/mnt/onboard/.adds/koborclone
LIB=/mnt/onboard

DT="date +%Y-%m-%d_%H:%M:%S"

USER_CONFIG=/mnt/onboard/.adds/koborclone/koborclone.conf
RCLONE_CONFIG=/mnt/onboard/.adds/koborclone/rclone.conf
RCLONE_CACHE_DIR=/mnt/onboard/.adds/koborclone/cache
RCLONE="$KOBORCLONE_DIR/rclone"
