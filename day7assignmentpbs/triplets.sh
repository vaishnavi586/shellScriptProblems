yo[0]=1
yo[1]=-1
yo[2]=2
yo[3]=0
i=0
j=0
k=0
count=0
while [ $i -ne 4 ]
do
j=`expr $i + 1`
while [ $j -ne 4 ]
do
k=`expr $j + 1`
while [ $k -ne 4 ]
do
su=`expr ${yo[i]} + ${yo[j]}`
sum=`expr $su + ${yo[k]}`
if [ $sum -eq 0 ]
then
echo ${yo[i]},${yo[j]},${yo[k]}
count=`expr $count + 1`
fi
k=`expr $k + 1`
done
j=`expr $j + 1`
done
i=`expr $i + 1`
done
echo "no of triplets is $count"
