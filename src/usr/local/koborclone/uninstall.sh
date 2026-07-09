#!/bin/sh

# load config for paths
. "$(dirname "$0")/config.sh"

echo "$($DT) Uninstalling kobo-rclone"

# stop udev from ever launching it again
UDEV_RULE=/etc/udev/rules.d/97-koborclone.rules
rm -f "$UDEV_RULE"

# remove on-device config, rclone config, cache and logs
rm -rf "$LOGS"

# remove the install dir, it holds this script so background the removal
rm -rf "$KOBORCLONE_DIR" &

exit 0
