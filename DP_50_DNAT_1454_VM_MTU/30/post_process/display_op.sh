vhosts='
vhost-10086
vhost-10345
vhost-2708
vhost-2981
vhost-3269
vhost-3559
vhost-3879
vhost-4146
vhost-4413
vhost-4739
vhost-5115
vhost-5402
vhost-5680
vhost-6067
vhost-6344
vhost-6803
vhost-7015
vhost-7410
vhost-7683
vhost-8126
vhost-8360
vhost-8756
vhost-9006
vhost-9425
vhost-9766
'

for vhost in $vhosts;
do
	#echo `cat top-$vhost-p.out` 
	echo `cat top-$vhost-a.out`
done
