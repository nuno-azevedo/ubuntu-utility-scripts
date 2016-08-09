#!/bin/bash

# Fix WiFi card not working on some laptops

printf "blacklist acer-wmi\n" | sudo tee -a /etc/modprobe.d/blacklist.conf
