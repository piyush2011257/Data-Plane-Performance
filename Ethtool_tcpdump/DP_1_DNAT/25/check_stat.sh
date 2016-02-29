log_file='
qvof4faa309-02.log
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

