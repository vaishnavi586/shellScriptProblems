#!/bin/bash
echo enter no of elements :
read s
echo enter elements
for (( i=0; i<$s; i++ ))
do
    read a[i]
done
for i in ${a[@]}
do
   sum=$(( $sum + $i ))
done
echo $sum

