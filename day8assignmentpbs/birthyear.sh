#!/bin/bash -x
count=0
declare -A birthMon
getBirthYear () {
echo $(( RANDOM%2+92 ))
}
getBirthMonth () {
echo $(( RANDOM%12+1 ))
}
storeInDictionary () {
birthMonth=$1
birthYear=$2
value="$birthMonth-$birthYear"
birthMon[$birthMonth]="${birthMon[$birthMonth]} $value"
}
printBirthMonth () {
for (( i=1; i<=12; i++ ))
do
echo ${birthMon[$i]}
done
}
birthMonthMain () {
while [ $count -ne 50 ]
do
birthYear=$(getBirthYear)
birthMonth=$(getBirthMonth)
storeInDictionary $birthMonth $birthYear
(( count++ ))
done
printBirthMonth
}
birthMonthMain
