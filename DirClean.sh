#!/bin/bash

echo "Enter directory path:"
read dir

# Check if directory exists
if [ ! -d "$dir" ]; then
    echo "Invalid directory"
    exit 1
fi

files=0
dirs=0

# Delete empty files
for f in "$dir"/*; do
    if [ -f "$f" ] && [ ! -s "$f" ]; then
        rm "$f"
        files=$((files + 1))
    fi
done

# Delete empty directories
for d in "$dir"/*; do
    if [ -d "$d" ] && [ -z "$(ls "$d")" ]; then
        rmdir "$d"
        dirs=$((dirs + 1))
    fi
done

echo "Cleanup complete"
echo "Empty files deleted: $files"
echo "Empty folders deleted: $dirs"
