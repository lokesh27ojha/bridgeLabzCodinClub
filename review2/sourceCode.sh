
function table()
{
    num=$1
    for i in {1..10}
    do
        mul=$(($num*$i))
        echo $num \* $i = $mul
    done
}

read -p "please enter the numbers to get its table : " var1
table $var1
