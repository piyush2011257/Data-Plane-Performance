vhosts='
vhost-12361
vhost-12599
vhost-12888
vhost-13087
vhost-13391'

for vhost in $vhosts;
do
	#echo `cat top-$vhost-p.out` 
	echo `cat top-$vhost-a.out`
done
