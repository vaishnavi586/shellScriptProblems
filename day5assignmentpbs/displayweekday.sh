#!/bin/bash -x
read -p "enter a number" digit
if [ $digit -eq 1 ]

then
    echo "monday"
elif [ $digit -eq 2 ]
then
     echo " tuesday"
elif [ $digit -eq 3 ]
then
     echo " wednesday"

elif [ $digit -eq 4 ]
then
     echo " thursday"

elif [ $digit -eq 5  ]
then
     echo " friday"

elif [ $digit -eq 6  ]
then
     echo " saturday"

elif [ $digit -eq 7  ]
then
     echo " sunday"

else
    echo "any day"
fi
