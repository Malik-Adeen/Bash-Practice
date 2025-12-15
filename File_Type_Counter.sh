#!/bin/bash

echo "Enter directory path:"
read dir

txt=0
sh=0
pdf=0
c=0

for file in "$dir"/*; do
    if [[ "$file" == *.txt ]]; then
        txt=`expr $txt + 1`
    elif [[ "$file" == *.sh ]]; then
        sh=`expr $sh + 1`
    elif [[ "$file" == *.pdf ]]; then
        pdf=`expr $pdf + 1`
    elif [[ "$file" == *.c ]]; then
        c=`expr $c + 1`
    fi
done

echo ".txt: $txt" > file_type_summary.txt
echo ".sh: $sh" >> file_type_summary.txt
echo ".pdf: $pdf" >> file_type_summary.txt
echo ".c: $c" >> file_type_summary.txt

cat file_type_summary.txt
