#!/bin/bash

# Prevent bluetooth from turning on with system startup

sudo sed -i '/^exit 0/i \rfkill block bluetooth\n' /etc/rc.local