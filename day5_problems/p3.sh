
val1=$(( RANDOM % 1000 ))
val2=$(( RANDOM % 1000 ))
val3=$(( RANDOM % 1000 ))

echo three random numbers generated are : $val1 $val2 $val3

if [ $val1 -gt $val2 ] && [ $val1 -gt $val3 ]
then
    echo $val1 is the greatest
elif [  $val2 -gt $val3 ]
then
    echo $val2 is the greatest
else
    echo $val3 is the greatest
fi