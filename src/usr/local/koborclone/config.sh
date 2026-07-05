#!/bin/sh

KC_HOME=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
USER_CONFIG_TEMPLATE="$KC_HOME/koborclone.conf.tmpl"
RCLONE_CONFIG_TEMPLATE="$KC_HOME/rclone.conf.tmpl"

LOGS=/mnt/onboard/.adds/koborclone
LIB=/mnt/onboard
SD=/mnt/sd/koborclone

DT="date +%Y-%m-%d_%H:%M:%S"

USER_CONFIG=/mnt/onboard/.adds/koborclone/koborclone.conf
RCLONE_CONFIG=/mnt/onboard/.adds/koborclone/rclone.conf
RCLONE="$KC_HOME/bin/rclone"
