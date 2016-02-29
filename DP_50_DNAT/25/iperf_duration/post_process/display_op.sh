vhosts='
vhost-22564
vhost-22812
vhost-23056
vhost-23494
vhost-23684
vhost-23888
vhost-24201
vhost-24726
vhost-24920
vhost-25119
vhost-25474
vhost-26006
vhost-26269
vhost-26460
vhost-26802
vhost-27351
vhost-27563
vhost-27780
vhost-28242
vhost-28577
vhost-28836
vhost-29118
vhost-29583
vhost-29950
vhost-30221
'

for vhost in $vhosts;
do
	#echo `cat top-$vhost-p.out` 
	echo `cat top-$vhost-a.out`
done
