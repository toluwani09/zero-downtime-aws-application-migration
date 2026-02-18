#!/bin/bash
# Verify application logs for errors

LOG_FILE="/var/log/myapp/app.log"
ERROR_COUNT=$(grep -i "error" $LOG_FILE | wc -l)

echo "Number of errors in logs: $ERROR_COUNT"
if [ $ERROR_COUNT -gt 0 ]; then
    echo "ALERT: Errors detected in logs!"
fi

