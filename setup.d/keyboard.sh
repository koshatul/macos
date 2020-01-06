#!/usr/bin/env bash
set -e

echo "-- setup:keyboard"

## copied from : https://raw.githubusercontent.com/danhenke/macos/c9ea5ac8247608033056b988bda0114e28d81f9a/bin/keyboard.sh

## Enable full keyboard access for all controls (e.g. enable Tab in modal dialogs)
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

## not found when "read"ing values, maybe deprecated ?
# ## Disable press-and-hold for keys in favor of key repeat
# defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

## Set a key delay until repeat
defaults write NSGlobalDomain InitialKeyRepeat -int 15

## Set key repeat rate
defaults write NSGlobalDomain KeyRepeat -int 2
