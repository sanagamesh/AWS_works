#!/bin/bash

password="$1"

if [[ ${#password} -ge 12 && ${password} =~ [0-9] && ${password} =~ [A-Z] && ${password} =~ ['!@#$%^&*()_+'] ]]; then
	echo "Entered the strong password: ${password}"
else 
	echo "Please enter the password with atleats 12 words, one capital letter, one spcial character, one number"
fi
