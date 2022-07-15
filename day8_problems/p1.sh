declare -A dice
dice[1]=0;
dice[2]=0;
dice[3]=0;
dice[4]=0;
dice[5]=0;
dice[6]=0;

for (( i=0;i<100;i++ ))
do
    flg=0
    ran=$((RANDOM%7))
    if [ $ran -gt 0 ]
    then
        dice[$ran]=$((dice[$ran]+1));
        for val in ${dice[@]}
        do
            if [ $val -eq 10 ]
            then
                flg=1
                break
            fi
        done
    fi
    
    if [ $flg -eq 1 ]
    then
        break
    fi
done

echo randomly generated dice numbers and count are :
echo ${!dice[@]} 
echo ${dice[@]}


max=${dice[1]}
min=${dice[1]}
maxind=1
minind=1

for i in {1..6}
do
    value=${dice[$i]}
    if [ $value -gt $max ]
    then
        max=$value
        maxind=$i
    fi
    if [ $value -lt $min ]
    then
        min=$value
        minind=$i
    fi
done

echo max repeated number is : $maxind repeats $max times
echo min repeated number is : $minind repeats $min times

