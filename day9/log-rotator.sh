#!/bin/bash

logfile="app.log"
archivedir="archive"
max_size_kb=1024      # 1 MB = 1024 KB
timestamp=$(date +%Y%m%d-%H%M%S)

mkdir -p "$archivedir"

size_kb=$(du -k "$logfile" 2>/dev/null | awk '{print $1}')

if [ -z "$size_kb" ]; then
  echo "❌ \"$logfile\" does not exist."
  exit 1
fi

echo "🔍 Current size: ${size_kb} KB"

if [ "$size_kb" -gt "$max_size_kb" ]; then
	echo "File size is big.....Now rotating"
	mv "$logfile" "$archivedir/app-$timestamp.log"
	echo "File moved to Archived folder...Now Creating new one"
	touch "$logfile"
	echo "Log rotated at $timestamp"

else
	echo "Log size is less than max size"
fi
