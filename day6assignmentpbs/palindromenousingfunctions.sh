
echo "Enter the number"
read n
number=$n
reverse=0
tst(){
while [ $n -gt 0 ]
do
a=`expr $n % 10 `
n=`expr $n / 10 `
reverse=`expr $reverse \* 10 + $a`
done
echo $reverse

}

reverse=$( tst )

if [ $n -eq $reverse ]
then
    echo "Number is palindrome"
else
    echo "Number is not palindrome"

fi
