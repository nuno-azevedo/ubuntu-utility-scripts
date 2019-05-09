#!/bin/bash

# Reload network icon of status bar.

killall nm-applet
setsid nm-applet
