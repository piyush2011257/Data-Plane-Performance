log_file='
qvo149286cb-75.log  qvo64afcdd9-e0.log  qvo6932ef96-8c.log  qvo74e621f4-b2.log  qvocb0c71ac-44.log
qvo622a1cc8-54.log  qvo682f7580-32.log  qvo7191ced8-68.log  qvo7dfca862-0d.log  qvofeb555df-6c.log
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

