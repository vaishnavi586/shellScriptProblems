#!/bin/bash 
n=50
low=0
high=100
prevl=0
prevh=0
while [ $low -ne $high ]
do
echo "is your number > $n ? [y/n]: "
read r
if [ $r = 'y' ]
then
low=$n
else
high=$n
fi
n=`expr $low + $high`
n=`expr $n / 2`
dif=`expr $high - $low`
if [ $prevl -eq $low -a  $dif -eq 1 ]
then
low=$high
fi
if [ $prevh -eq $high -a $dif -eq 1 ]
then
high=$low
fi
prevl=$low
Prevh=$high
done
echo "the guess no is $high"
