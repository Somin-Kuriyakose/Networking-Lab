#!/bin/bash
Hello()
{
	echo "Hello World $1 $2"
	return 10
}
Hello Welcome Mes
ret=$?
echo "Return value is $ret"
