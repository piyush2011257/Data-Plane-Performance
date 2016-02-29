vhosts='vhost-23533
vhost-23784
vhost-24101
vhost-24386
vhost-24686
vhost-24877'

for vhost in $vhosts;
do
	cat top-$vhost-p.out
	cat top-$vhost-a.out
done
