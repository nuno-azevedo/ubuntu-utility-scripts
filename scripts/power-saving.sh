#!/bin/bash

# Enable power saving tweaks.

sudo pm-powersave true
sudo tlp start
sudo tlp bat
sudo tlp usb
sudo powertop --auto-tune
