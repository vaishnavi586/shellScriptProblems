#!/bin/bash

echo enter size of array
read s
echo enter elements
for (( i=0; i<$s; i++ ))
do
     read array[i]
done

echo${#array[@]}
last=${#array[@]}


for (( i=0 ; i<last ; i=i+2 )); do
    echo "${array[i]}"

done
