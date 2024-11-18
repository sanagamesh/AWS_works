#!/bin/bash
set -x
while read line; do 
    echo $line
done < log.txt
