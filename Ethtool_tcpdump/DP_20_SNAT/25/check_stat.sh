log_file='
qvo255d8cdd-90.log  qvo371f6802-2a.log  qvo64fe2cbe-e0.log  qvo8ac497fc-02.log  qvod3528df6-21.log
qvo2c03cad1-71.log  qvo55e43796-2a.log  qvo687f7490-ec.log  qvoca18b8af-48.log  qvoddc2d5ce-cc.log
'
i=1
for file in $log_file;
do
        #echo $file
        tot=$(cat $file | grep "> 1.1.1.34" | wc -l)
        noff=$(cat $file | grep "> 1.1.1.34" | grep 1464 | wc -l)
        echo -n "VM$i $noff Non-Offloaded packets out of sample $tot = "
        res=$(awk "BEGIN {printf \"%.2f\",${noff}/${tot}}")
        echo $res
        let ' i = i + 1'
done

