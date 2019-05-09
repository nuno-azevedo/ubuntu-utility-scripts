#!/bin/bash

# Update repositories, upgrade packages and fix broken packages.

sudo apt-get -ym update
sudo apt-get -ym upgrade
sudo apt-get -yfm install --no-install-recommends
