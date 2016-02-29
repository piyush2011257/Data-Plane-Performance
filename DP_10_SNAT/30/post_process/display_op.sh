vhosts='
vhost-9182
vhost-9460
vhost-9675
vhost-9926'

for vhost in $vhosts;
do
	#echo `cat top-$vhost-p.out` 
	echo `cat top-$vhost-a.out`
done
