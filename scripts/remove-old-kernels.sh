#!/bin/bash

# Remove outdated Linux Kernel versions.

local CURRENT="$(uname -r | cut -d - -f 1,2)"

dpkg -l linux-* \
    | awk '/^ii/{print $2}' \
    | grep -v -e "${CURRENT}" \
    | grep -e '[0-9]' \
    | grep -E '(image|headers)' \
    | xargs sudo apt-get -y autoremove --purge
