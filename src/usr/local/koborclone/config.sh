#!/bin/sh

KC_HOME=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
CONFIG_TEMPLATE="$KC_HOME/koborclone.conf.tmpl"
RCLONE_CONFIG_TEMPLATE="$KC_HOME/rclone.conf.tmpl"

LOGS=/mnt/onboard/.adds/koborclone
LIB=/mnt/onboard
SD=/mnt/sd/koborclone
USER_CONFIG=/mnt/onboard/.adds/koborclone/koborclone.conf
DT="date +%Y-%m-%d_%H:%M:%S"
RCLONE_CONFIG=/mnt/onboard/.adds/koborclone/rclone.conf
RCLONE="$KC_HOME/bin/rclone"
