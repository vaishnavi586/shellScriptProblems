#!/bin/bash 
declare -a diceroll
rolladice () {
echo $(( RANDOM%6 + 1 ))
}
minimum=11
maximum=-1
secondMinimum=0
getDiceNumber () {
randomValue=$(( RANDOM%6+1 ))
#echo "RANDOM RESULT:" $randomValue
storeInDictionary $randomValue
}
storeInDictionary () {
key=$1
diceroll[$key]=$(( ${diceroll[$key]} + 1 ))
}
getMinimumMaximum () {
	for (( i=1; i<=${#diceroll[@]}; i++ ))
do
if [[ ${diceroll[$i]} -lt $minimum ]]
then
secondMinimum=$minimum
minimum=${diceroll[$i]}
elif [[ ${diceroll[i]} -lt $secondMinimum && ${diceroll[$i]} -ne $minimum ]]
then
secondMinimum=${diceroll[$i]}
fi
if [[ ${diceroll[$i]} -gt $maximum ]]
then
maximum=${diceroll[$i]}
fi
done
}
rollDiceMain () {
while [[ ${diceroll[1]} -ne 10 && ${diceroll[2]} -ne 10 &&
${diceroll[3]} -ne 10 && ${diceroll[4]} -ne 10 && ${diceroll[5]} -ne 10
&& ${diceroll[6]} -ne 10 ]]
do
getDiceNumber
done
getMinimumMaximum
}
rollDiceMain
echo "All keys i dictionary:" ${!diceroll[@]}
echo "all elements in dictionary:" ${diceroll[@]}
echo "minimum value:" $minimum
echo "maximum value:" $maximum
