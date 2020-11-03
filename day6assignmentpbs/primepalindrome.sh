#! /bin/bash -
is_prime()
{
for (( i=2 ; i<=number/2 ; i++ ))
do
	if [ $(( number%i )) -eq 0 ]
	then 
		flag=1
	fi
done
}
is_palindrome()
{
	rem=$(( $number%10 ))
	sum=$(( ($sum*10)+$rem ))
	number=$(( $number/10 ))
}
echo "enter number" 
read number
rem=0
sum=0
temp=$number
flag=2
i=2
while [ $i -le $((number/2)) ]
do
	is_prime $number
done
while [ $number -ne 0 ]
do
	is_palindrome $number
done
if [[ $temp -eq $sum ]] 
then
	echo "$temp is palindrome"
else
	echo "$temp not palindrome"
fi
if [[ $flag -eq 1 ]] ;
then
	echo "$temp is not prime"
else
	echo "$temp is prime"
fi
