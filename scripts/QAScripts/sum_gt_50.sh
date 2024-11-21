#!/bin/bash

numbers="$@"


value=0
for number in $numbers  ; do
    value=$((value+number))
    numberlist+=' '$number
    if [[ $value -ge 50 ]]; then
        break
    fi
    
done
echo $value
echo $numberlist
