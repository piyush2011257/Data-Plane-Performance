log_file='
qvo01faa7ae-1a.log  qvo317d9d4a-9b.log  qvo64afcdd9-e0.log  qvo7191ced8-68.log  qvo94f147be-19.log  qvoc74556c5-7e.log  qvofeb555df-6c.log
qvo0e3e8027-12.log  qvo500782fd-70.log  qvo66fce691-18.log  qvo74e621f4-b2.log  qvo978ba67e-68.log  qvocb0c71ac-44.log
qvo149286cb-75.log  qvo61535fb2-19.log  qvo682f7580-32.log  qvo7dfca862-0d.log  qvoae3e1d3b-56.log  qvod40641fa-a7.log
qvo2612dc2e-09.log  qvo622a1cc8-54.log  qvo6932ef96-8c.log  qvo8b2eea32-a2.log  qvob971f8d6-99.log  qvodf6989c6-d4.log
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

