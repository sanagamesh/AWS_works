#!/bin/bash

# Factorial of number
# 5! = 5 * 4 * 3 * 2 * 1
#n! = n * (n-1)!

num=$1
result=1
function Factorial(){
    for (( i = 1; i<=num ; i++ )); do
        result=$((result * i))
    done
    echo "Factorial of $num is: $result"  # Display the final result
}

# Check if a number is provided
if [[ -z "$num" ]]; then
    echo "Usage: $0 <non-negative integer>"
    exit 1
fi

# Check if the input is a non-negative integer
if ! [[ "$num" =~ ^[0-9]+$ ]]; then
    echo "Please enter a valid non-negative integer."
    exit 1
fi

Factorial
