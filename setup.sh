#!/usr/bin/env bash
set -e

BREW_BIN="$(which brew)"
if [[ "${BREW_BIN}" == "" ]]; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    exit
fi

echo "-- Installing brew dependencies"
brew bundle --file="$(dirname "${0}")/Brewfile"

source "$(dirname "${0}")/config.sh"

for SCRIPT in $(dirname "${0}")/setup.d/*.sh; do
    if [ -x "${SCRIPT}" ]; then
        # echo "SCRIPT: ${SCRIPT}"
        ${SCRIPT}
    fi
done
