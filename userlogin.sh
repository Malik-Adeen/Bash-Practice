#!/bin/bash

who > user_report.txt
count=$(who | wc -l)

echo "Users logged in: $count"
echo "Report saved to user_report.txt"
