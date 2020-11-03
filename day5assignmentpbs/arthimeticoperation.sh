read -p " enter first no: " a
read -p "enter second no: " b
read -p "enter third no: " c
j=$(( $a+$b*$c ))
echo $j
if [ $a -gt $b ] && [ $a -gt $c ]
then
    echo $a
elif [ $b -gt $a ] && [ $b -gt $c ]
then
    echo $b
else
    echo $c
fi
