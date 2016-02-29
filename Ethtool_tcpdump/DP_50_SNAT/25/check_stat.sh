log_file='
qvo03a527fa-f5.log  qvo2c03cad1-71.log  qvo5eeb7491-ec.log  qvo687f7490-ec.log  qvo8ac497fc-02.log  qvoca18b8af-48.log  qvoddc2d5ce-cc.log
qvo03ba7e39-2e.log  qvo371f6802-2a.log  qvo63f71fa6-70.log  qvo6f414b0b-df.log  qvo920db95d-92.log  qvocaf8df11-c5.log  qvofbdc1274-f9.log
qvo0e866131-9f.log  qvo37a88c26-4a.log  qvo64eadf95-97.log  qvo74003a5e-b2.log  qvoafd4f247-49.log  qvod33a930e-63.log
qvo255d8cdd-90.log  qvo55e43796-2a.log  qvo64fe2cbe-e0.log  qvo76abe7ee-63.log  qvobeedb7c5-2e.log  qvod3528df6-21.log
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

