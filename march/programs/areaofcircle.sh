#!/bin/bash

calculate_area() {
  local radius=$1
  local area=$(echo "3.14159 * $radius * $radius" | bc) 
  echo $area
}

echo "Enter the radius of the circle: "
read radius

if (( $(echo "$radius > 0" | bc -l) )); then
  area=$(calculate_area $radius)
  echo "The area of the circle with radius $radius is: $area"
else
  echo "Please enter a positive value for the radius."
fi

