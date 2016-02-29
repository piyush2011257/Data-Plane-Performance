vhosts='
vhost-18838
vhost-19060
vhost-19410
vhost-19678
vhost-19936
vhost-20435
vhost-20769
vhost-21003
vhost-21186
'

for vhost in $vhosts;
do
	#echo `cat top-$vhost-p.out` 
	echo `cat top-$vhost-a.out`
done
