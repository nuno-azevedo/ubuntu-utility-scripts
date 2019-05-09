#!/bin/bash

# Rename files of the current directory using a number sequence.

ls -p \
    | sort -n \
    | grep -v '/$' \
    | cat -n \
    | while read NUMBER FILE; do mv ${FILE} ${NUMBER}.${${FILE}##*.}; done
