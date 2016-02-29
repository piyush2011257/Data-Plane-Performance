total=0
for i in {102..126};
do
        echo $i
	for j in {3..26};
	do
		#echo $file
        	#echo $i
		#echo $j
		before=$(cat interrupts_before.log | grep $i: | tr -s " " | cut -d " " -f $j)
		after=$(cat interrupts_after.log | grep $i: | tr -s " " | cut -d " " -f $j)
		#echo $before
		#echo $after
		echo "=$after-$before"
                total=$(echo $total + $after - $before | bc)
        	#echo $res
	done
done
echo $total
