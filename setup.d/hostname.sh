#!/usr/bin/env bash
set -e

echo "-- setup:hostname"

if [[ -z ${CONFIG_HOST_NAME} ]]; then
    echo "error: environment variable CONFIG_HOST_NAME must be set" >&2
    exit 99
fi

if [[ "${CONFIG_HOST_NAME}" == "$(hostname -s)" ]]; then
    echo "++ host name already set: ${CONFIG_HOST_NAME}"
    exit 0
fi

echo "++ setting hostname: ${CONFIG_HOST_NAME}"

sudo scutil --set ComputerName "${CONFIG_HOST_NAME}"
sudo scutil --set HostName "${CONFIG_HOST_NAME}"
sudo scutil --set LocalHostName "${CONFIG_HOST_NAME}"
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "${CONFIG_HOST_NAME}"
