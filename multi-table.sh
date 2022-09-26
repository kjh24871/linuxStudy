#!/bin/sh

mulcol=$1
mulrow=$2
if [ -z "$mulrow" ] || [ -z "$mulcol" ] ;
then
	echo "Invalid input"
	exit 0
fi
if [ "$mulrow" -lt 0 ] || [ "$mulcol" -lt 0 ] ;
then
	echo "Input must be greater than 0"
	exit 0
fi
for i in $(seq 1 ${mulcol})
do	
	ret=""
	for j in $(seq 1 ${mulrow})
	do
		num="$i*$j=`expr $i \* $j`\t"
		ret=$ret$num
	done
	echo $ret
done
exit 0
