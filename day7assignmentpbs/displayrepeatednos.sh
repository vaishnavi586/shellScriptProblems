for num in {0..100}; do
  if [[ $num%11 -eq 0 ]];
  then
    array[i]=$num
    echo ${array[i]}
  fi
done
