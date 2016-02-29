log_file='
qvo0204e707-92.log  qvo1047b102-30.log  qvo40f025ea-2d.log  qvo609a12c1-cb.log  qvo839f802b-81.log  qvoc127aa07-a7.log  qvof135e0fe-3a.log
qvo025e2e42-57.log  qvo12383fcf-dc.log  qvo490b0a27-9c.log  qvo6e67bf14-0c.log  qvo8a485d87-59.log  qvod34d36ce-63.log
qvo07a8d713-7e.log  qvo2c780e95-b8.log  qvo594b0fc9-6a.log  qvo7282d3fa-bb.log  qvo94ed4b2b-91.log  qvod4989daa-f5.log
qvo0e07675e-3e.log  qvo2f80a1d3-cc.log  qvo5c94244b-31.log  qvo80983400-31.log  qvoae12285c-d0.log  qvoe82bb3bc-0f.log
'
i=1
for file in $log_file;
do
	#echo $file
	tot=$(cat $file | grep "> 1.1.1.34" | wc -l)
	noff=$(cat $file | grep "> 1.1.1.34" | grep 1468 | wc -l)
	echo -n "VM$i $noff Non-Offloaded packets out of sample $tot = "
	res=$(awk "BEGIN {printf \"%.2f\",${noff}/${tot}}")
	echo $res
	let ' i = i + 1'
done

