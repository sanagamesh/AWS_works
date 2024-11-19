#!/bin/bash

sentance="$@"

first_word="echo $sentance | awk '{ print $1 }'
echo "$first_word"
