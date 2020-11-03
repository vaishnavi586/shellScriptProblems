
echo enter size of array
read s
echo enter elements
for (( i=0; i<$s; i++ ))
do
     read array[i]
done

largest=${array[0]}

for((i=1; i < ${#array[@]}; i++))
do
  if [[ ${array[i]} > $largest ]]
  then
    largest=${array[i]}
   fi
done
echo "the largest is $largest"
