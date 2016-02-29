vhosts='
vhost-27453
vhost-27705
vhost-27962
vhost-28312
vhost-28616'

for vhost in $vhosts;
do
	#echo `cat top-$vhost-p.out` 
	echo `cat top-$vhost-a.out`
done
