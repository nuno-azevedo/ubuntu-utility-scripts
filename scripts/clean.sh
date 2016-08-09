#!/bin/bash

# Clean system cache and useless files / packages 

sudo apt-get -y autoremove --purge
sudo apt-get -y autoclean
sudo apt-get -y clean
sudo rm -rf /var/crash
