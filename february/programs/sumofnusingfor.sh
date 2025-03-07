#!/bin/bash
echo "Enter the size:"
read n
sum=0
echo "The numbers are:"
for((i=1;i<=n;i++))
do
	read num
	sum=$((sum+num))
done
echo "Sum of $n numbers:$sum"
