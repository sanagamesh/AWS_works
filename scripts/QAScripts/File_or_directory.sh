#!/bin/bash

path=$1
echo "$#"
echo "-------"
echo "$@"
echo "-------"
echo "$*"
echo "-------"


if [[ "$#" -ne 1 ]]; then
	echo "Usage : $0 <Path>"
	exit
fi

if [[ -e $1 ]]; then
	echo " Valid path: $path"

	if [[ -f "$path" ]]; then 
		echo -e "\t$path is valid file"
	elif [[ -d "$path" ]]; then
                echo -e "\t$path is valid directory"
	fi
else 
	echo "Invalid Path: $1"
fi

