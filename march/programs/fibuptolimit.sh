#!/bin/bash

a=0
b=1
sum=0
limit=10

echo "Fibonacci series up to $limit terms:"

for (( i=1; i<=limit; i++ ))
do
    echo -n "$a " 
    sum=$((sum + a))  
    fib=$((a + b))  
    a=$b  
    b=$fib
done
echo
echo "The sum of the Fibonacci series up to $limit terms is: $sum"

