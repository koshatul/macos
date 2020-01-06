#!/usr/bin/env bash
set -e

echo "-- setup:tmp"

if [[ ! -d "${HOME}/tmp" ]]; then
    echo "++ creating ${HOME}/tmp"
    mkdir "${HOME}/tmp"
fi
