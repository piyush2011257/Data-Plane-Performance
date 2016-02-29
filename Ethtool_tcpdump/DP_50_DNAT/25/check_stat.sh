log_file='
qvo102f2dd3-da.log  qvo398150c1-07.log  qvo694c02dc-e1.log  qvo74c939f9-bc.log  qvo8e43072f-01.log  qvob94f7a76-94.log  qvofe3c7c54-e7.log
qvo11c81688-d5.log  qvo4c8d9cc2-25.log  qvo6c231072-39.log  qvo83f13604-81.log  qvo9b2361d9-e5.log  qvocd655aad-ab.log
qvo14387471-cb.log  qvo56b082ad-55.log  qvo6ddc64d7-db.log  qvo841e28a2-5f.log  qvo9c28e17e-bf.log  qvod4ed2e41-fd.log
qvo216aea42-24.log  qvo642f0463-66.log  qvo71d71b99-95.log  qvo8455ff07-12.log  qvoa28e239a-9d.log  qvof4faa309-02.log
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

