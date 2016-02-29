vhosts='
vhost-11654
vhost-11905
vhost-12181
vhost-12403
vhost-12704
vhost-13159
vhost-13507
vhost-13726
vhost-13974
vhost-14414'

for vhost in $vhosts;
do
	#echo `cat top-$vhost-p.out` 
	echo `cat top-$vhost-a.out`
done
