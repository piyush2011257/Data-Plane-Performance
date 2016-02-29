vhosts='
vhost-24318
vhost-24557
vhost-24811
vhost-25039
vhost-25343
vhost-25805
vhost-26139
vhost-26364
vhost-26581
vhost-26818
vhost-27356
vhost-27655
vhost-27884
vhost-28307
vhost-28631
vhost-28869
vhost-29097
vhost-29551
vhost-29967
vhost-30196
vhost-30411
vhost-30883
vhost-31354
vhost-31604
vhost-31806
'

for vhost in $vhosts;
do
	#echo `cat top-$vhost-p.out` 
	echo `cat top-$vhost-a.out`
done
