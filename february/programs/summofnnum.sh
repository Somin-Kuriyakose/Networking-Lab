#!/bin/bash
echo "Enter the size:"
read n
i=1
sum=0
echo "Enter numbers:"
while [ $i -le $n ]
do
	read num
	sum=$((num+sum))
	i=$((i+1))
done
echo "The sum of $n numbers is $sum"
