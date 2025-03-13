#!/bin/bash

read -p "Enter a 5-digit number: " num

if [[ $num =~ ^[0-9]{5}$ ]]; then
    reversed=$(echo "$num" | rev)
    echo "The reverse of the number is: $reversed"
else
    echo "Error: Please enter a valid 5-digit number."
fi
