read -p "enter the year " year

if [ $(($year%400)) -eq 0 ]
then
    echo "leap year"
elif [ $(($year%100)) -eq 0 ]
then
    echo "not a leap year"
elif [ $(($year%4)) -eq 0 ]
then
    echo "leap year"
else
    echo "not a leap year"
fi