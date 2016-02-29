dir=./
mkdir -p ./post_process

threads='ksoftirqd vhost'

# neutron-dhc+ neutron-l3-+ neutron-ns-+ neutron-ope+ neutron-roo+ neutron-met+ ovs-vswitchd ovs-vsctl ovsdb-client ovsdb-server dnsmasq'

# sar CPU utilization
cat sar.log | grep all | tr -s ' ' | cut -d ' ' -f9 | sort -n | head -n 1 > sar-peak.out
cat sar.log | grep all | tr -s ' ' | cut -d ' ' -f9 | awk '{ total += $1; count++ } END { print total/count }' > sar-avg.out;

# top-np per thread cpu utilization
for proc in $threads;
do
    cat top-np.log | grep  ${proc} | grep " R "| tr -s " " | sed 's/^ //g' | cut -d " " -f 9,12 | awk '{ print $2" " $1}' | sort > top-${proc}.out
    cat top-${proc}.out | cut -d " " -f 1 | sort | uniq  > top-${proc}.list
    total_cpu=0
    for th in `cat top-${proc}.list`
    do
        one_th_avg=`grep $th top-${proc}.out | cut -d " " -f 2 | awk '{ total += $1; count++ } END { print total/count }'`
        total_cpu=`echo "$total_cpu + $one_th_avg" | bc`
    done
    echo $total_cpu > top-${proc}-total.out
done

# Calculate avg peak
echo "100 - `cat sar-peak.out | awk '{ total += $1; count++ } END { print total/count }'`" | bc > sar-p.out
# Calculate avg avg
echo "100 - `cat sar-avg.out | awk '{ total += $1; count++ } END { print total/count }'`" | bc > sar-a.out
# Calculate thread cpu consumption - peak

for proc in $threads; do
    cat top-${proc}.out | cut -d " " -f 2 | sort -n -r | head -n 1 > top-${proc}-p.out
    #cat top-${proc}-total.out | sort -n -r | head -n 1 > top-${proc}-p.out
    cat top-${proc}-total.out > top-$proc-a.out
    #echo "`cat top-${proc}-total.out | awk '{ total += $1; count++ } END { print total/count }'`" | bc > top-$proc-a.out
done;

mv ./*.out ./post_process/
mv ./*.list ./post_process/

<< "comment1"
# top-np per thread mem utilization
for proc in $threads;
do
    cat top-np.log | grep  ${proc} | grep "0 R "| tr -s " " | sed 's/^ //g' | cut -d " " -f 10,12 | awk '{ print $2" " $1}' | sort > top-${proc}-mem.out
    cat top-${proc}-mem.out | cut -d " " -f 1 | sort | uniq  > top-${proc}-mem.list
    total_mem=0
    for th in `cat top-${proc}-mem.list`
    do
        one_th_avg=`grep $th top-${proc}-mem.out | cut -d " " -f 2 | awk '{ total += $1; count++ } END { print total/count }'`
        total_mem=`echo "$total_mem + $one_th_avg" | bc`
    done
    echo $total_mem > top-${proc}-mem-total.out
done

# Calculate thread mem consumption - peak
for proc in $threads; do
    cat top-${proc}-mem-total.out | sort -n -r | head -n 1 > top-${proc}-mem-p.out
    echo "`cat top-${proc}-mem-total.out | awk '{ total += $1; count++ } END { print total/count }'`" | bc > top-$proc-mem-a.out
done;

mv ./*.out ./post_process/
mv ./*.list ./post_process/
comment1
