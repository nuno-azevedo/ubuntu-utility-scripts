#!/bin/bash

# Mount a disk partition in read only mode in /media

# Arguments:
#   $1 -> Number of sda partition
#   $2 -> Name of mount point folder

sudo mkdir -p "/media/$USER/$2"

sudo mount -t "ntfs" -ro "uhelper = udisks2, nodev, nosuid, uid = 1000, gid = 1000, dmask = 0077, fmask = 0177" "/dev/sda$1" "/media/$USER/$2"
