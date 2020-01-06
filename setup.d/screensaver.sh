#!/usr/bin/env bash
set -e

echo "-- setup:screensaver"

## Set to Aerial screensaver
defaults -currentHost write com.apple.screensaver moduleDict -dict moduleName Aerial path "${HOME}/Library/Screen Savers/Aerial.saver" type 0
defaults -currentHost write com.apple.screensaver idleTime 300
# defaults -currentHost write com.apple.screensaver showClock 300
defaults -currentHost write com.apple.screensaver CleanExit YES
defaults -currentHost write com.apple.screensaver PrefsVersion 100
defaults -currentHost write com.apple.screensaver tokenRemovalAction 0
