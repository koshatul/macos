#!/usr/bin/env bash
set -e

echo "-- setup:ssh"

echo "-- Enable SSH Server"
sudo systemsetup -f -setremotelogin on
