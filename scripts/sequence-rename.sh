#!/bin/bash

# Rename files of the current directory using a number sequence

ls -p | sort -n | grep -v '/$' | cat -n | while read n f; do mv ${f} $n.${${f}##*.}; done
