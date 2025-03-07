#!/bin/bash
n=1
for i in {2..20..2}
do
	echo "$n*2=$i"
	n=$((n+1))
done

