#!/bin/bash

reverse_words() {
    sentence="$1"
    # Convert the sentence into an array of words and reverse the array
    words=($sentence)
    for (( i=${#words[@]}-1; i>=0; i-- )); do
        echo -n "${words[$i]} "
    done
    echo  # To print a newline at the end
}

# Test
#

echo "input the sentence: "
read sentence
#sentence="Hello world this is Bash"
reverse_words "$sentence"

