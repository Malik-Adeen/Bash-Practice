#!/bin/bash
echo "$(pwd)"
echo "Enter directory path:"
read dir

if [ ! -d "$dir" ]; then
    echo "Invalid directory"
    exit 1
fi

cd "$dir"

if [ "$(ls | wc -l)" -eq 0 ]; then
    echo "Directory is empty"
    exit 1
fi

for file in *; do
    if [ -f "$file" ]; then
        ext="${file##*.}"
        mkdir -p "$ext"
        mv "$file" "$ext/"
    fi
done

echo "Organization complete"
