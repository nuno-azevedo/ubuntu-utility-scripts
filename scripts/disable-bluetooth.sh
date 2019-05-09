#!/bin/bash

# Prevent Bluetooth from turning on automatically on system startup.

sudo sed -i '/^exit 0/i \rfkill block bluetooth\n' /etc/rc.local
