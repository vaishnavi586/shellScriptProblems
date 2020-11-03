#!/bin/bash -x
echo “Enter a number”
 read num
 case $num in
 [0-9])
 echo “unit is units”
 ;;
 [1-9][0-9])
 echo “unit is tens”
 ;;
 [1-9][0-9][0-9])
 echo “unit is hundered”
 ;;
 [1-9][0-9][0-9][0-9])
  echo "unit is thousands"
 ;;
 
esac
