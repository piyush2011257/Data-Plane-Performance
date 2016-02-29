processes='
ksoftirqd/11
ksoftirqd/12
ksoftirqd/19
ksoftirqd/21
ksoftirqd/3
ksoftirqd/5
ksoftirqd/6
ksoftirqd/9
'
for proc in $processes;
do
	cat top-np.log | grep $proc | grep R | awk '{ total += $9; count++ } END { print total/count }'
	#cat top-np.log | grep $proc | grep R | awk '{ print $9 }' | sort -n -r | head -n 1
done
