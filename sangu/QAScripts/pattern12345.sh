#!/bin/bash
num=$1

for (( i = 1; i <= num; i++ )); do
    for (( j = 1; j <= i; j++ )); do
        echo -n "$j "
    done
    echo
done
