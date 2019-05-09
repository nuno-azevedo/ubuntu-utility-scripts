#!/bin/bash

# Restart mouse/touchpad driver.

sudo modprobe -r psmouse
sudo modprobe psmouse
