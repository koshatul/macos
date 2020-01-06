#!/usr/bin/env bash
set -e

echo "-- setup:sudo"

echo "++ checking if sudoers addon is already done"
if [[ "$(sudo cat /private/etc/sudoers.d/00-admin > /dev/null 2> /dev/null; echo $?)" != "0" ]]; then
    echo "++ creating 00-admin sudoers config"
    echo "Asking for user password to edit sudoers safely"
    echo '%admin    ALL = (ALL) NOPASSWD: ALL' | sudo EDITOR="tee" visudo -f /private/etc/sudoers.d/00-admin
else
    echo "++ sudoers addon already created"
fi
