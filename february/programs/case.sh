#!/bin/bash
echo "Enter your option 1.Add,2.Sub,3.Mul"
read i
case $i in
	1)echo $(($1+$2));;
	2)echo $(($1-$2));;
	3)echo $(($1*$2));;
esac
