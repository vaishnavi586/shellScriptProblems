tails=0;
heads=0;
while [ $tails -lt 11 -a $heads -lt 11 ]
do
a=$((RANDOM%2))
if [ $a -eq 0 ]
then
    tails=$(($tails+1))
    echo tails
else
    heads=$(($heads+1))
    echo heads
fi
done
echo "heads count:$heads"
echo "tail count: $tails"
if [ $heads -gt $tails ]
then
   echo "heads won"
else
    echo"tails won"
fi
