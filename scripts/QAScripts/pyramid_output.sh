#!/bin/bash


value="$1"


for (( i = 1; i <= $value; i++ )); do
    for (( k = $value; k >= $i; k-- )); do
        echo -n " "
    done
    for (( j = 1; j <= $i; j++ )); do
        echo -n "$i "
    done
    echo
done
