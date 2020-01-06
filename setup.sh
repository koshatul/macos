#!/usr/bin/env bash
set -e

source "$(dirname "${0}")/config.sh"

echo "-- Installing brew dependencies"
brew bundle --file="$(dirname "${0}")/Brewfile"

for SCRIPT in $(dirname "${0}")/setup.d/*.sh; do
    if [ -x "${SCRIPT}" ]; then
        # echo "SCRIPT: ${SCRIPT}"
        ${SCRIPT}
    fi
done
