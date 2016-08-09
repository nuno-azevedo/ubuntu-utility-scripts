#!/bin/bash

# Search for old kernels in the system and remove them

dpkg -l linux-* | awk '/^ii/{print $2}' | grep -v -e "$(uname -r | cut -d"-" -f1,2)" | grep -e "[0-9]" | grep -E "(image|headers)" | xargs sudo apt-get -y autoremove --purge
