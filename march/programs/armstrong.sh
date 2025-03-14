#!/bin/bash

echo "Enter a number: "
read number

sum=0
temp=$number
n=${#number} 

while [ $temp -ne 0 ]; do
    digit=$((temp % 10)) 
    sum=$((sum + digit**n)) 
    temp=$((temp / 10)) 
done

if [ $sum -eq $number ]; then
    echo "$number is an Armstrong number."
else
    echo "$number is not an Armstrong number."
fi

