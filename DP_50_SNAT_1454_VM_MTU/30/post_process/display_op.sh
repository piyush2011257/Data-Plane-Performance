vhosts='
vhost-17916
vhost-18182
vhost-18416
vhost-18701
vhost-18950
vhost-19205
vhost-19634
vhost-20050
vhost-20255
vhost-20580
vhost-20992
vhost-21308
vhost-21541
vhost-21938
vhost-22207
vhost-22609
vhost-22848
vhost-23186
vhost-23484
vhost-23927
vhost-24171
vhost-24558
vhost-24890
vhost-25351
vhost-25727
'

for vhost in $vhosts;
do
	#echo `cat top-$vhost-p.out` 
	echo `cat top-$vhost-a.out`
done
