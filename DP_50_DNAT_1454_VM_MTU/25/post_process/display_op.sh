vhosts='
vhost-11946
vhost-12184
vhost-12459
vhost-12776
vhost-13078
vhost-13362
vhost-13643
vhost-13985
vhost-14345
vhost-14654
vhost-15017
vhost-15273
vhost-15646
vhost-15940
vhost-16405
vhost-16652
vhost-16952
vhost-17225
vhost-17699
vhost-17987
vhost-18297
vhost-18571
vhost-18988
vhost-19341
vhost-19619
'

for vhost in $vhosts;
do
	#echo `cat top-$vhost-p.out` 
	echo `cat top-$vhost-a.out`
done
