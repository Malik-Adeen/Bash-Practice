#!/bin/bash

echo "Enter process name:"
read pname

pid=$(pgrep "$pname")

if [ -z "$pid" ]; then
    echo "Process not running"
    echo "$(date): $pname not running" >> process_log.txt
else
    echo "Process running with PID: $pid"
    echo "$(date): $pname running PID $pid" >> process_log.txt
fi
