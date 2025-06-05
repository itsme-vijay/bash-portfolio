#!/bin/bash
#
#
add() {
	echo "Result: $(($1 + $2))"
}

sub() {
	echo "Result: $(($1 - $2))"
}

mul() {
	echo "Result: $(($1 * $2))"
}

div() {
	echo "Result: $(($1 / $2))"
}

read -p "Enter first num:" a
read -p "Enter 2nd num:" b

read -p "Choose operation only from {add, sub, mul, div}:" op

case $op in
	add) add $a $b;;
	sub) sub $a $b;;
	mul) mul $a $b;;
	div) div $a $b;;
	*) echo "Invaild input"
esac


