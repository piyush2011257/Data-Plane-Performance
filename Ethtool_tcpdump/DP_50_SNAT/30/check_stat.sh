log_file='
qvo00343359-11.log  qvo1d20166e-bb.log  qvo411a4dfe-b5.log  qvo636b86f1-96.log  qvob5f7b7a3-3e.log  qvoe0d7ad1d-6f.log
qvo0fed4de7-1b.log  qvo2dcfc6da-7d.log  qvo43e2504f-3a.log  qvo76fc9f4b-c4.log  qvodbc94590-62.log  qvoe6163e5e-54.log
qvo14d53f21-69.log  qvo30703ea1-85.log  qvo48651c79-27.log  qvo978f8e29-b8.log  qvodde03765-18.log  qvoe8ed82e0-ee.log
qvo1d2003a5-96.log  qvo3a4353fb-b5.log  qvo4f32e899-43.log  qvoa3f18395-61.log  qvode58def9-e6.log  qvoed7aa38d-22.log
'
i=1
for file in $log_file;
do
	#echo $file
	tot=$(cat $file | grep "> 1.1.1.34" | wc -l)
	noff=$(cat $file | grep "> 1.1.1.34" | grep 1464 | wc -l)
	echo -n "VM$i $noff Non-Offloaded packets out of sample $tot = "
        res=$(awk "BEGIN {printf \"%.2f\",${noff}/${tot}}")
        echo $res
	let ' i = i + 1'
done

