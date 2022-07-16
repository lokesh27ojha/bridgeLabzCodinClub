read -p "enter first number" a
read -p "enter second number" b
read -p "enter third number" c

declare -A computaion

op1=$(($a+$b*$c))
computaion["op1"]=$op1
op2=$(($a*$b+$c))
computaion["op2"]=$op2
op3=$(($c+$a/$b))
computaion["op3"]=$op3
op4=$(($a%$b+$c))
computaion["op4"]=$op4

len=${#computaion[@]}
declare -a arr
i=0
for val in ${computaion[@]}
do
    arr[$i]=$val
    i=$i+1
done

echo "results stored in array before sorting : "${arr[@]}

for (( ind=0; ind<$len; ind++ ))
do
    for (( j=0; j<$len; j++ ))
    do
        if [ ${arr[$j]} -gt ${arr[$ind]} ]
        then
            c=${arr[$j]}
            arr[$j]=${arr[$ind]}
            arr[$ind]=$c
        fi
    done
done
echo "sorted array in ascending order : "${arr[@]}

for (( ind=0; ind<$len; ind++ ))
do
    for (( j=0; j<$len; j++ ))
    do
        if [ ${arr[$j]} -lt ${arr[$ind]} ]
        then
            c=${arr[$j]}
            arr[$j]=${arr[$ind]}
            arr[$ind]=$c
        fi
    done
done
echo "sorted array in ascending order : "${arr[@]}
