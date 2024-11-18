#!/bin/bash

# Get the available disk space on the current file system (in gigabytes or megabytes).
Mem=$(df -BG . | tail -1 | awk '{print $4}' | sed 's/G//')

# Convert Mem to an integer for comparison. The df -BG command shows the output in gigabytes.
# Check if available disk space is less than or equal to 1G (adjust threshold if needed).
if [ "$Mem" -le 1 ]; then
    # Send an email if memory usage exceeds the threshold.
    echo "Disk space is low on the system. Available space: ${Mem}G" | mail -s "Disk Space Alert" sangameshsh1998121@gmail.com
fi

# Log a message for confirmation (optional).
echo "Script executed. Available space: ${Mem}G"

