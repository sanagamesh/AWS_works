#!/bin/bash
set -x
# Print and sort the arguments passed to the script
sorted_numbers=$(echo "$@" | tr ' ' '\n'| sort -n)
a="$@"
b="$#"
echo "$sorted_numbers" | awk '{print NF-1}'
