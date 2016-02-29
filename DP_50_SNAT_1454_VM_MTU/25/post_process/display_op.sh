vhosts='
vhost-1064
vhost-1393
vhost-1649
vhost-2003
vhost-2409
vhost-27079
vhost-27332
vhost-27609
vhost-27916
vhost-28276
vhost-28540
vhost-28744
vhost-29096
vhost-29493
vhost-29742
vhost-30051
vhost-30374
vhost-30827
vhost-31090
vhost-31399
vhost-31673
vhost-32134
vhost-32414
vhost-32668
vhost-542
'

for vhost in $vhosts;
do
	#echo `cat top-$vhost-p.out` 
	echo `cat top-$vhost-a.out`
done
