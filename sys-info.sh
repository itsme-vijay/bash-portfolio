#!/bin/bash
#
#
#Ask user name
read -p "Enter your name:-" name

#Get Current Date & Time
hour=$(date +%H)

#Time based greeting

if [ $hour -lt 12 ]; then
	echo "Good morning $name"
elif [ $hour -lt 17 ]; then
	echo "Good afternoon $name"
else
	echo "Good evening $name"
fi

#Display system info
echo "User: $USER"
echo "Hostname: $(hostname)"
echo "Date: $(date)"
echo "Disk usage"
df -h | grep '^/dev'

#Check success
if [ $? -eq 0 ];then
	echo "Info retrived successfully"
else
	echo "error fetching info"
fi


