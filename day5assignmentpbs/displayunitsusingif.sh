#!/bin/bash -x
read -p " enter no"a
if [ `(( $a -ge 9 -a  $a -le 0 ))` ]
then
    echo "units"
elif [ $a -ge 10 -a $a -le 99 ]
then
    echo "tens"

else
   echo "hundreds"
fi

