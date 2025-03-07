#!/bin/bash

echo "Enter a string: "
read input_string

reversed_string=$(echo "$input_string" | rev)

if [ "$input_string" == "$reversed_string" ]; then
  echo "The string '$input_string' is a palindrome."
else
  echo "The string '$input_string' is not a palindrome."
fi

