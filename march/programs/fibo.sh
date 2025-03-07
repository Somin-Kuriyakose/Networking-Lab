#!/bin/bash

echo "Enter the number of terms for the Fibonacci series: "
read n

a=0
b=1

if [ $n -le 0 ]; then
  echo "Please enter a positive integer."
else
  echo "The Fibonacci series up to $n terms is:"
  
  echo -n "$a "
  
  for (( i=2; i<=n; i++ ))
  do
    echo -n "$b "
    temp=$b
    b=$((a + b))
    a=$temp
  done

  echo # Print a newline
fi

