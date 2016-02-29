log_file='
qvo216aea42-24.log  qvo694c02dc-e1.log  qvo74c939f9-bc.log  qvo8e43072f-01.log  qvof4faa309-02.log
qvo398150c1-07.log  qvo6c231072-39.log  qvo83f13604-81.log  qvod4ed2e41-fd.log  qvofe3c7c54-e7.log
'
i=1
for file in $log_file;
do
	#echo $file
	tot=$(cat $file | grep ": 1.1.1.22" | wc -l)
	noff=$(cat $file | grep ": 1.1.1.22" | grep 1464 | wc -l)
	echo -n "VM$i $noff Non-Offloaded packets out of sample $tot = "
        res=$(awk "BEGIN {printf \"%.2f\",${noff}/${tot}}")
        echo $res
	let ' i = i + 1'
done

