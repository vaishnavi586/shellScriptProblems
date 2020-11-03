#!/bin/bash
a=0
read -p "enter range" n
echo "1"
echo "2"
for((i=3;i<=n;))
do
for((j=i-1;j>=2;))
do
if [  `expr $i % $j` -ne 0 ] ; then
a=1
else
a=0
break
fi
j=`expr $j - 1`
done
if [ $a -eq 1 ] ; then
echo $i
fi
i=`expr $i + 1`
done
