echo you entered date $1
echo you entered month $2

if [ $2 == "march" ] || [ $2 == "april" ] || [ $2 == "may" ] || [ $2 == "june" ]
then
    if [ $2 == "april" ]
    then
        if [ $1 -ge 1 ] && [ $1 -le 30 ]
        then
            echo true
        else
            echo false
        fi
    elif [ $2 == "may" ]
    then
        if [ $1 -ge 1 ] && [ $1 -le 31 ]
        then
            echo true
        else
            echo false
        fi
    elif [ $2 == "march" ]
    then
        if [ $1 -ge 20 ] && [ $1 -le 31 ]
        then
            echo true
        else
            echo false
        fi
    elif [ $2 == "june" ]
    then
        if [ $1 -ge 1 ] && [ $1 -le 20 ]
        then
            echo true
        else
            echo false
        fi
    fi
else
echo "date is not in the given field"
fi