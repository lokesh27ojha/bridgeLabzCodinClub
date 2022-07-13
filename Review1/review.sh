if [ -d backup ]
then
	echo folder backup already exist. deleting the folder.
	rm -rf backup
fi
echo creating folder backup
echo ----------------------------------
mkdir backup

if [ -d review ]
then
        echo folder review already exist. deleting the folder.
        rm -rf review
fi
echo creating folder review
echo ----------------------------------
mkdir review

echo 'moving file review.sh to folder review'
echo ----------------------------------
mv review.sh review
cd review
touch a.java b.js c.py d.html

for item in `ls`
do
	foldername=`echo $item | awk -F. '{print $2}'`
	cd ../backup
	if [ -d $foldername ]
        then
        	echo folder $item already exist. deleting the folder.
        	rm -rf $foldername
	fi
	echo creating folder $foldername inside the folder backup.
	mkdir $foldername
	cd ../review
	echo moving file $item into folder $foldername
	echo --------------------------------------
	mv $item ../backup/$foldername
done
