MAXCOUNT=10
count=1

while [ "$count" -le $MAXCOUNT ]; do
 array[$count]=$(( $RANDOM%900+100 ))
 let "count += 1"
done
echo "${array[@]}"
for((i=1; i < ${#array[@]}; i++))
do
 for (( j=$i; j < ${#array[@]}; j++ ))
 do
 if [ ${array[$i]} -gt ${array[$j]} ]; then
 t=${array[$i]}
 array[$i]=${array[$j]}
 array[$j]=$t
 fi
 done
echo  ${array[$i ]}
done

largest=${array[0]}
secondGreatest='unset'

for((i=1; i < ${#array[@]}; i++))
do
  if [[ ${array[i]} > $largest ]]
  then
    secondGreatest=$largest
    largest=${array[i]}
  elif (( ${array[i]} != $largest )) && { [[ "$secondGreatest" = "unset" ]] || [[ ${array[i]} > $secondGreatest ]]; }
  then
    secondGreatest=${array[i]}
  fi
done
echo "secondGreatest = $secondGreatest"

