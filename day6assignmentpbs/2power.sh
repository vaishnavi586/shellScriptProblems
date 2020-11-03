echo "Input power"
read power

ans=1

for (( i=0; i< power; i++ ))
do
        ans=`expr $ans \* 2`
        echo "$no power of $power is $ans"

        counter=`expr $counter + 1`
done
