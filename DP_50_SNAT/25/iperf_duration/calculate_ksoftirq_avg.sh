processes='
ksoftirqd/0
ksoftirqd/1
ksoftirqd/10
ksoftirqd/11
ksoftirqd/12
ksoftirqd/13
ksoftirqd/14
ksoftirqd/15
ksoftirqd/16
ksoftirqd/17
ksoftirqd/18
ksoftirqd/19
ksoftirqd/2
ksoftirqd/21
ksoftirqd/3
ksoftirqd/4
ksoftirqd/5
ksoftirqd/6
ksoftirqd/7
ksoftirqd/9
'

for proc in $processes;
do
	#cat top-np.log | grep $proc | grep R | awk '{ total += $9; count++ } END { print total/count }'
	cat top-np.log | grep $proc | grep R | awk '{ print $9 }' | sort -n -r | head -n 1
done
