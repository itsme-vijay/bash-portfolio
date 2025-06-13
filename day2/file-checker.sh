#!/bin/bash

#Take input from user
read -p "enter a file or directory path:" path

#Check what it is
if [ -f $path ]; then
	echo "its a file"
elif [ -d $path ]; then
	echo "its a directory"
elif [ -e $path ]; then
	echo "it exists, but its not a regular file or folder"
else
	echo "nothing found"
fi


