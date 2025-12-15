#!/bin/bash

echo "$(pwd)"
echo "Enter directory path:"
read dir
echo "Enter keyword:"
read key

if [ ! -d "$dir" ]; then
    echo "Invalid directory"
    exit 1
fi

grep -r "$key" "$dir" > search_report.txt

count=$(grep -ro "$key" "$dir" | wc -l)

echo "Total occurrences: $count"
echo "Report saved to search_report.txt"
