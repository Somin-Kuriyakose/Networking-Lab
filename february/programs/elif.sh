a=10
b=20
if [[ $a -eq $b ]]
then
	echo "a is equal to b"
elif [[ $a -gt $b ]]
then 
	echo "a is greater thean b"
elif [[ $a -lt $b ]]
then
	echo "a is lessthan b"
fi
