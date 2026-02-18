#!/bin/bash
# Script to validate CPU usage is within expected thresholds

THRESHOLD=80
CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | \
            sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | \
            awk '{print 100 - $1}')

echo "Current CPU usage: $CPU_USAGE%"
if (( $(echo "$CPU_USAGE > $THRESHOLD" | bc -l) )); then
    echo "ALERT: CPU usage exceeds threshold!"
fi

