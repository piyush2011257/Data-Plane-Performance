vhosts='
vhost-1699
vhost-1977
vhost-2253
vhost-2491
vhost-2848
vhost-3115
vhost-3457
vhost-3693
vhost-4006
vhost-4423
vhost-4708
'
for vhost in $vhosts;
do
	#echo `cat top-$vhost-p.out` 
	echo `cat top-$vhost-a.out`
done
