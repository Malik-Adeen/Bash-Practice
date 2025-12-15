#!/bin/bash

echo "Enter directory path:"
read dir
date=$(date +%Y%m%d)

cd "$dir"

for file in *.txt; do
    new="${file%.txt}_$date.txt"
    mv "$file" "$new"
    echo "$file → $new"
done
