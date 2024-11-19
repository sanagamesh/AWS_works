#!/bin/bash

word="$@"
echo "$1"

for (( i=0; i<${#word}; i++ )); do
    if [[ "${word:$i:1}" =~ ^[aeiou] ]]; then
        vowels+=${word:$i:1}
    else
        consonent+=${word:$i:1}
    fi
done

echo "$vowels are all vowels"
echo "$consonent are all consonent"
