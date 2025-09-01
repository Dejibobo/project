#!/bin/bash
LOG_FILE="$HOME/memory_usage_daily.log"
RECIPIENT_EMAIL="ayorisic040@gmail.com"

if [ "$1" = "log" ]; then
    echo "=== $(date) ===" >> "$LOG_FILE"
    free -h >> "$LOG_FILE"
    echo "" >> "$LOG_FILE"

elif [ "$1" = "report" ]; then
    if [ -s "$LOG_FILE" ]; then
        mail -s "Daily Memory Report" "$RECIPIENT_EMAIL" < "$LOG_FILE"
   if [ $? -eq 0 ]; then
            > "$LOG_FILE"   
        fi        
    fi

else
    echo "Usage: $0 {log|report}"
fi

