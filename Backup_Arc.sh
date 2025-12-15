#!/bin/bash

echo "Enter directory path:"
read dir

date=$(date +%Y%m%d)
backup="backup_$date"

mkdir "$backup"

find "$dir" -type f -mtime -7 -exec cp {} "$backup" \;

count=$(ls "$backup" | wc -l)
size=$(du -sh "$backup" | cut -f1)

echo "Files backed up: $count"
echo "Backup size: $size"
