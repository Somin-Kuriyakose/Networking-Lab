#!/bin/bash
echo "Enter first number:"
read num1

echo "Enter second number: "
read num2

echo "Enter operations: +,-,*,/: "
read operation

case $operation in
        +)
                result=$((num1 + num2))
                echo "result:  $num1 + $num2 = $result";;
        -)
                result=$((num1 - num2))
                echo "result:  $num1 - $num2 = $result";;
        \*)
                result=$((num1 * num2))
                echo "result:  $num1 * $num2 = $result";;
        /)
                result=$((num1 / num2))
                echo "result:  $num1 / $num2 = $result";;
        *)
                echo "invalid operation .....";;
esac



~                                                                                                                                      
~                                   
