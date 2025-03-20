#!/bin/bash

# Prompt the user to enter the paths of the two files
echo "Enter the path of the first file:"
read file1
echo "Enter the path of the second file:"
read file2

# Check if both files exist
if [ ! -e "$file1" ]; then
    echo "$file1 does not exist."
    exit 1
fi

if [ ! -e "$file2" ]; then
    echo "$file2 does not exist."
    exit 1
fi

# Compare the files
if cmp -s "$file1" "$file2"; then
    echo "The files are identical."
else
    echo "The files are different."
fi

