#!/bin/bash
#
#
#Ceate archive folder
mkdir -p archive

#Timestamp
time=$(date "+%Y%m%d-%H%M%S")

#Find all .log files and zip them into archive
zip "archive/log-$time.zip" *.log

#Delete original .log files
rm *.log

echo "Log archived & cleaned"



