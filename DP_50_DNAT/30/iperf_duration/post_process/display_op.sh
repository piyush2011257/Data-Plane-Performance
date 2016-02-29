vhosts='
vhost-10039
vhost-10303
vhost-10519
vhost-10949
vhost-11258
vhost-11515
vhost-11752
vhost-12189
vhost-12591
vhost-12865
vhost-13071
vhost-13540
vhost-13841
vhost-14158
vhost-14584
vhost-15018
vhost-15279
vhost-15506
vhost-15912
vhost-8229
vhost-8502
vhost-8783
vhost-9015
vhost-9258
vhost-9615
'
for vhost in $vhosts;
do
	#echo `cat top-$vhost-p.out` 
	echo `cat top-$vhost-a.out`
done
