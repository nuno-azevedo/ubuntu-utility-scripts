#!/bin/bash

# Clean stale packages, cache and temporary files.

sudo apt autoremove --yes --purge
sudo apt autoclean --yes
sudo apt clean --yes
find ~ \( -name '.DS_Store' -o -name 'Icon'$'\r' -o -name '*~' \) -delete
