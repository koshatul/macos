#!/usr/bin/env bash
set -e

echo "-- setup:mouse"

## Mouse scroll direction
defaults write "Apple Global Domain" com.apple.swipescrolldirection -bool FALSE
