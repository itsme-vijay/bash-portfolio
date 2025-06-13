#!/bin/bash

echo "[$(/usr/bin/date)] CRON CALLED ME" >> /tmp/cron-debug.log

# Create a timestamp
timestamp=$(date "+%Y-%m-%d %H:%M:%S")

# Start the log entry
echo "=============================" >> system-health.log
echo "$timestamp" >> system-health.log
echo "=============================" >> system-health.log

# CPU usage
echo "" >> system-health.log
echo "CPU Usage:" >> system-health.log
top -bn1 | grep "Cpu(s)" >> system-health.log

# RAM usage
echo "" >> system-health.log
echo "RAM Usage:" >> system-health.log
free -m >> system-health.log

# Disk usage
echo "" >> system-health.log
echo "🗃️ Disk Usage:" >> system-health.log
df -h >> system-health.log

# Done
echo "Log saved to system-health.log"
