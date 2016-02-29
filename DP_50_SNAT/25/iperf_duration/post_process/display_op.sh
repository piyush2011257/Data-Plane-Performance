vhosts='
vhost-10068
vhost-10344
vhost-10589
vhost-11097
vhost-11423
vhost-11639
vhost-11913
vhost-12480
vhost-12705
vhost-12930
vhost-13266
vhost-13819
vhost-14078
vhost-6394
vhost-6649
vhost-6873
vhost-7231
vhost-7549
vhost-7750
vhost-8005
vhost-8318
vhost-8898
vhost-9148
vhost-9354
vhost-9545
'

for vhost in $vhosts;
do
	#echo `cat top-$vhost-p.out` 
	echo `cat top-$vhost-a.out`
done
