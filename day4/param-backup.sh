#!/bin/bash

while getopts "s:d:" opt; do
  case $opt in
    s) src=$OPTARG ;;
    d) dest=$OPTARG ;;
    *) echo "Usage: $0 -s <source> -d <destination>"; exit 1 ;;
  esac
done

if [ ! -d "$src" ]; then
  echo "❌ Source folder not found!"
  exit 1
fi

mkdir -p "$dest"
backup="$dest/backup-$(date +%Y%m%d-%H%M%S).zip"

zip -r "$backup" "$src" > /dev/null

if [ $? -eq 0 ]; then
  echo "✅ Backup successful: $backup"
else
  echo "❌ Backup failed"
fi
