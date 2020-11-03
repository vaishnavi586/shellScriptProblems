#!/bin/bash -x
read -p "enter a number" digit
if [ $digit -eq 1 ]

then
    echo "you entered one"
elif [ $digit -eq 2 ]
then
     echo " two"
elif [ $digit -eq 3 ]
then
     echo " three"

elif [ $digit -eq 4 ]
then
     echo " four"

elif [ $digit -eq 5  ]
then
     echo " five"

else
    echo "not single digit"
fi
