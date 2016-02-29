log_file='
qvo054e5810-30.log  qvo1c287706-45.log  qvo515179a3-11.log  qvo5bab6f6c-43.log  qvo81c47737-f3.log  qvod9f6c804-79.log  qvofd1220a5-db.log
qvo080787b9-70.log  qvo344290c3-32.log  qvo538e7276-cb.log  qvo5e8db88c-e5.log  qvo838988cb-9d.log  qvoea014aea-03.log
qvo0d83af49-fb.log  qvo34dc91f8-5b.log  qvo587fbaf4-bd.log  qvo6f62f545-e7.log  qvob2d92f1a-88.log  qvoefebeaf4-a8.log
qvo11a39136-f3.log  qvo4502d8d0-b2.log  qvo5aa29980-94.log  qvo78274ec6-73.log  qvoba4d1961-30.log  qvof823ae13-ca.log
'
i=1
for file in $log_file;
do
	#echo $file
	tot=$(cat $file | grep ": 1.1.1.22" | wc -l)
	noff=$(cat $file | grep ": 1.1.1.22" | grep 1468 | wc -l)
	echo -n "VM$i $noff Non-Offloaded packets out of sample $tot = "
        res=$(awk "BEGIN {printf \"%.2f\",${noff}/${tot}}")
        echo $res
	let ' i = i + 1'
done

