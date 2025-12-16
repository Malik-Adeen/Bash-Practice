#!/bin/bash

echo "Enter directory path:"
read dir

# Check if directory exists
if [ ! -d "$dir" ]; then
    echo "Invalid directory path"
    exit 1
fi

# Total files
files=$(find "$dir" -type f | wc -l)

# Total directories
dirs=$(find "$dir" -type d | wc -l)

# Total size
size=$(du -sh "$dir" | cut -f1)

echo
echo "---------------- Directory Report ----------------"
printf "%-25s %s\n" "Total Files:" "$files"
printf "%-25s %s\n" "Total Directories:" "$dirs"
printf "%-25s %s\n" "Total Size:" "$size"
echo "--------------------------------------------------"
echo
echo "Largest 5 Files:"
echo "--------------------------------------------------"
printf "%-10s %s\n" "Size" "File"
du -ah "$dir" | sort -rh | head -n 5
echo "--------------------------------------------------"
