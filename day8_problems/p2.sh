declare -A birthMon92
declare -A birthMon93

for (( i=1 ; i<=50 ; i++ ))
do
    div=$((93-92+1))
    ranYear=$(($((RANDOM%$div))+92))
    
    div=$((12-1+1))
    ranMon=$(($((RANDOM%$div))+1))

    if [ $ranYear -eq 92 ]
    then
        val=${birthMon92[$ranMon]}
        birthMon92[$ranMon]=$(($val+1))
    elif [ $ranYear -eq 93 ] 
    then
        val=${birthMon93[$ranMon]}
        birthMon93[$ranMon]=$(($val+1))
    fi
done

echo "for year 1992 random month and the number of people that have birthday in the same month"
echo ${!birthMon92[@]}
echo ${birthMon92[@]}
echo
echo "for year 1992 random month and the number of people that have birthday in the same month"
echo ${!birthMon93[@]}
echo ${birthMon93[@]}
