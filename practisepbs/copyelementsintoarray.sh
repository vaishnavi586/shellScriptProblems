#!/bin/bash
echo enter no of elements :
read s
echo enter elements
for (( i=0; i<$s; i++ ))
do
    read a[i]
done
b=${a[@]}

for value in ${b[@]}
do
   echo $value
done
