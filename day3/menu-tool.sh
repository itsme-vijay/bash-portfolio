#!/bin/bash
#
#
while true; do
	echo "----SYSTEM MENU----"
	echo "1-Show current date & time"
	echo "2-Show disk usage"
	echo "3-Show uho is logged in"
	echo "4-Exit"
	echo "--------------------"
	read -p "Choose option (1-4);" choose

	case $choose in
		1) date ;;
		2) df -h | grep "^/dev" ;;
		3) whoami ;;
		4) echo "Exiting....."; break ;;
		*) echo "Invaild input please choose from 1 to 4" ;;
	esac
	echo ""
done


