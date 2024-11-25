#!/bin/bash

#print no untill the 20 - 30 , pyramid triangle
value=$1
high=30
low=20
for i in {20..30}; do
    if [[ $value -ge $low && $value -le $high || $value -gt $high ]]; then
        if [[ $i -gt $value ]]; then
            continue
        else
            echo $i
        fi
    elif [[ $value -lt $low ]]; then
        echo "Value is out of given boundary 20-30"
        break
    fi
done
