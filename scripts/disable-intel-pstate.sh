#!/bin/bash

# Disable Intel P-State new CPU driver

sudo sed -i 's/^GRUB_CMDLINE_LINUX_DEFAULT="quiet splash"/GRUB_CMDLINE_LINUX_DEFAULT="quiet splash intel_pstate=disable"/g' /etc/default/grub

sudo update-grub
sudo update-grub2