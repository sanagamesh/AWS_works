#!/bin/bash
word="$@"
spaceremoved_word=$(echo "${word,,}" | tr -d [:space:])
echo "$spaceremoved_word"
reversed=$(echo "$spaceremoved_word" | rev )
echo "$reversed"

if [[ "$spaceremoved_word" == "$reversed" ]];then
    echo "palindrome"
else
    echo "not a palindrome"
fi
