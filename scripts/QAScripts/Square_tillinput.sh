#!/bin/bash

num="$1"

i=1

while [[ i -le $num ]]; do
    if [[ $((i*i)) -le $num ]]; then
        echo -n "$((i*i )) "
        
    fi
    i=$((i+1))
done
