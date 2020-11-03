bal=2
noOfBets=0
noOfWins=0
while [ $bal -gt 0 -a $bal -lt 200 ]
do
noOfBets=`expr $noOfBets + 1`
echo "Win or Lose[y/n]:"
read i

if [ $i = 'y' ]
then
bal=`expr $bal + 1`
noOfWins=`expr $noOfWins + 1`
else
bal=`expr $bal - 1`
fi
done
echo "No. of wins=$noOfWins"
echo "No. of bets=$noOfBets"
