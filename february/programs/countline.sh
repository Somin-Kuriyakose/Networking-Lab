#!/bin/bash
echo "Enter a file:"
read file
number_of_lines=`wc -l < $file`
echo "Number of lines:$number_of_lines"
