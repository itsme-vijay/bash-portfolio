#!/bin/bash
#

read -p "enter first number:" num1
read -p "enter 2nd number:" num2

if [ $num1 -eq $num2 ]; then
	echo "both numbers are equal"
elif [ $num1 -gt $num2 ]; then
	echo "$num1 is greator than $num2"
else
	echo "$num2 is greator than $num1"
fi


