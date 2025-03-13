#!/bin/bash

echo "Enter value for a: " 
read a
echo "Enter value for b: " 
read b
echo "Enter value for c: " 
read c
echo "Enter value for d: " 
read d

if [ "$d" -eq 0 ]; then
    echo "Error: Division by zero is not allowed."
    exit 1
fi

result=$(echo "($a * 20 - $b * 2 + $c / $d)" | bc)

echo "The result of the expression is: $result"

