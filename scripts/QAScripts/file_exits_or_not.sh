#!/bin/bash
file="$1"

if [[ -f $file ]]; then
    #statements
    echo "File exists "
else
    echo "File not exist"
fi
