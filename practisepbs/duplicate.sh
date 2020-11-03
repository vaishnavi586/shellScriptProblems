#!/bin/bash

echo enter the size of array..
read s
echo enter elements of Array
for (( i=0; $i<$s; i++ ))
do
            read a[i]
done
for (( i=0; $i<$s; i++ ))
do
            for ((j=$i+1; $j<$s; j++))
            do
                        if [ ${a[i]} -eq ${a[j]} ]
                        then
                                    echo ${a[i]}
                        fi
            done
done
echo ${a[i]}
