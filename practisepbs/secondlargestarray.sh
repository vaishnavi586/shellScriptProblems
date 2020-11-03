echo enter size of array
read s
echo enter elements
for (( i=0; i<$s; i++ ))
do
     read array[i]
done

largest=${array[0]}
secondlargest='unset'

for((i=1; i < ${#array[@]}; i++))
do
  if [[ ${array[i]} > $largest ]]
  then
    secondlargest=$largest
    largest=${array[i]}
  elif (( ${array[i]} != $largest )) && { [[ "$secondlargest" = "unset" ]] || [[ ${array[i]} > $secondlargeest ]]; }
  then
    secondlargest=${array[i]}
  fi
done
echo "the largest is $secondlargest"
