#!/bin/bash

# Fix wifi icon showing connected by wire

killall nm-applet
setsid nm-applet