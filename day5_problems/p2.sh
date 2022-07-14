inch=$((1/12))
echo $inch | awk '{div=1/12; printf"%0.5f\n", div }'
echo $inch
echo "42 inch is $((42*echo $inch | awk '{div=1/12; printf"%0.5f\n", div }')) in feet"


echo $inch | awk '{printf"%0\.5f"}'