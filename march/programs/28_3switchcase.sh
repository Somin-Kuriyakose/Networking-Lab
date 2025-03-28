#!/bin/bash

echo "Choose an option:"
echo "1. Delete a particular line"
echo "2. Delete the last line"
echo "3. Delete lines from range X to Y"
echo "4. Delete all blank lines"
read choice

case $choice in
  1)
    echo "Enter the line number to delete:"
    read line_no
    echo "Enter the file name:"
    read file
    sed -i "${line_no}d" "$file"
    echo "Line $line_no deleted from $file."
    ;;
  2)
    echo "Enter the file name:"
    read file
    sed -i '$d' "$file"
    echo "Last line deleted from $file."
    ;;
  3)
    echo "Enter the starting line number (X):"
    read x
    echo "Enter the ending line number (Y):"
    read y
    echo "Enter the file name:"
    read file
    sed -i "${x},${y}d" "$file"
    echo "Lines from $x to $y deleted from $file."
    ;;
  4)
    echo "Enter the file name:"
    read file
    sed -i '/^$/d' "$file"
    echo "All blank lines deleted from $file."
    ;;
  *)
    echo "Invalid option. Exiting."
    ;;
esac

