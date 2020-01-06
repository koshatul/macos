#!/usr/bin/env bash
set -e

echo "-- setup:iterm2"

defaults write com.googlecode.iterm2 PrefsCustomFolder "${HOME}/Library/Mobile Documents/com~apple~CloudDocs/iTerm2"
