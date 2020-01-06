#!/usr/bin/env bash
set -e

echo "-- setup:sound"

## copied from https://raw.githubusercontent.com/danhenke/macos/c9ea5ac8247608033056b988bda0114e28d81f9a/bin/sound.sh

## Enable volume change feedback
defaults write NSGlobalDomain com.apple.sound.beep.feedback -int 1

## Increase sound quality for Bluetooth headphones/headsets
defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40
