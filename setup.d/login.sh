#!/usr/bin/env bash
set -e

echo "-- setup:login"

## copied from : https://raw.githubusercontent.com/danhenke/macos/c9ea5ac8247608033056b988bda0114e28d81f9a/bin/login.sh

## Disable guest logins to this computer
sudo defaults write /Library/Preferences/com.apple.loginwindow GuestEnabled -bool false
sudo defaults write /Library/Preferences/com.apple.AppleFileServer guestAccess -bool false
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server AllowGuestAccess -bool false

## Show shut down etc. buttons
sudo defaults write /Library/Preferences/com.apple.loginwindow PowerOffDisabled -bool false

## Don't show any password hints
sudo defaults write /Library/Preferences/com.apple.loginwindow RetriesUntilHint -int 0
