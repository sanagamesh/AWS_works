#!/bin/bash

# Capture all input arguments as a single string
sent="$@"

# Remove all spaces
spaceremoved=$(echo "$sent" | tr -d ' ')
echo "String without spaces: $spaceremoved"

# Loop through the string by its length
for (( i = 1; i <= ${#spaceremoved}; i++ )); do
    # Check if the position is a multiple of 3
    if (( i % 3 == 0 )); then
        # Access the character at the (i-1) position (zero-based indexing)
        char=${spaceremoved:i-1:1}
        echo "Character at position $i (multiple of 3): $char"
    fi
done
