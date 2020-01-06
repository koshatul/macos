#!/usr/bin/env bash
set -e

echo "-- setup:textedit"

## copied from : https://raw.githubusercontent.com/danhenke/macos/c9ea5ac8247608033056b988bda0114e28d81f9a/bin/textedit.sh

## Use plain text mode for new TextEdit documents
defaults write com.apple.TextEdit RichText -bool false

## Wrap to page
defaults write com.apple.TextEdit ShowPageBreaks -bool false

## Open and save files as UTF-8 in TextEdit
defaults write com.apple.TextEdit PlainTextEncoding -int 4
defaults write com.apple.TextEdit PlainTextEncodingForWrite -int 4

## Hide the ruler
defaults write com.apple.TextEdit ShowRuler -bool false

## Disable "Smart" features
defaults write com.apple.TextEdit SmartDashes -bool false
defaults write com.apple.TextEdit SmartQuotes -bool false
defaults write com.apple.TextEdit CorrectSpellingAutomatically -bool false

## Add ".txt" extensions to plain text files
defaults write com.apple.TextEdit AddExtensionToNewPlainTextFiles -bool false

## Display HTML files as HTML code instead of formatted text
defaults write com.apple.TextEdit IgnoreHTML -bool true
