log_file='
qvo0a6da6cc-d1.log  qvo2c19c0ba-c4.log  qvo5169b388-ea.log  qvo7cbabc85-65.log  qvo93963224-26.log  qvoa58ee4d6-d5.log  qvoc34470de-21.log
qvo0bb296a6-f7.log  qvo45447920-2a.log  qvo6400fdb2-b3.log  qvo7fbe8217-75.log  qvo9b468f13-d8.log  qvob25abe09-31.log
qvo0e05cdb0-87.log  qvo4c0b4fd0-7e.log  qvo6db4afb6-d3.log  qvo8282aca1-93.log  qvo9d528dad-b0.log  qvobb20c0f8-bd.log
qvo24f1a79d-e7.log  qvo4c7952ee-41.log  qvo7b0e3bd5-c4.log  qvo89136bd2-fb.log  qvoa42c4139-6a.log  qvobfb7dfeb-46.log
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

