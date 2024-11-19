#!/bin/bash
prime=0
notaprime=0
numbers="$@"
for number in $numbers; do
    is_prime=1
    for (( i = 2; i < number; i++ )); do
        if (( number % i == 0  )); then
            is_prime=0
            break
        fi
    done
    if (( is_prime == 1)); then
        prime=$((prime + number))
        echo "$number is a prime number"
    else
        notaprime=$((notaprime + number))
        echo "$number is a not prime number"
    fi
done

echo "Sum of prime number $prime"
echo "Sum of non prime number $notaprime"
