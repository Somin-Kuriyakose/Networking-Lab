#!/bin/bash
i=10
while [ $i -le 100 ]
do
	echo $i
	i=`expr $i + 10`
done
