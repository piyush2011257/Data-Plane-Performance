vhosts='
vhost-27954
vhost-28197
vhost-28499
vhost-28787
vhost-29043
vhost-29242
vhost-29562
vhost-30013
vhost-30268
vhost-30508'

for vhost in $vhosts;
do
	#echo `cat top-$vhost-p.out` 
	echo `cat top-$vhost-a.out`
done
