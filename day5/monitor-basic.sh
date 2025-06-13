#!/bin/bash
#
#
#Show the date & time
echo "Date&Time:"
date

#Show CPU usage
echo "CPU Usage:"
top -bn1 | grep "Cpu(s)"

#Show RAM usage
echo "RAM Usage:"
free -m

#Show Disk Usage
echo "Disk usage:"
df -h
