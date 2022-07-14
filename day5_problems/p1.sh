ran=$(( RANDOM % 10))
echo "the single digit random number : $ran"

ran=$(( RANDOM % 7))
echo "random dice number : $ran"

dice1=$(( RANDOM % 7))
dice2=$(( RANDOM % 7))
echo "two random dice numbers : $dice1 and $dice2"
echo "sum of two random dice numbers : $(($dice1 + $dice2))"
