#!/bin/bash

number=$1

#number=$(read "Enter the number to validate odd or even")

if [ $(($number%2))  -eq 0 ]; then
	echo "$number is even number"
else
	echo "$number is Odd number"

fi
