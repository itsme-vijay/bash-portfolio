#!/bin/bash
#
#Output file
report="system-report-$(date +%Y%m%d).txt"

echo "System Health Report ----- $(date)" > $report
echo "--------------------------------" >> $report

#CPU Usage
echo "---------------------" >> $report
echo "----CPU USAGE----" >> $report
top -bn1 | grep "Cpu(s)" >> $report
echo "---------------------" >> $report

#RAM Usage
echo "----RAM USAGE----" >> $report
free -m >> $report

#DISK Usage
echo "----DISK USAGE----" >> $report
df -h >> $report

#Who is logged in
echo "Logged in Users:" >> $report
who >> $report

echo "Report generated" >> $report


