#!/bin/bash

usage=$(df / | tail -1 | awk '{print $5}')
value=${usage%?}

if [ "$value" -gt 80 ]; then
    echo "$(date): Disk usage is $usage" >> disk_alert.log
    echo "Warning! Disk usage high"
fi
