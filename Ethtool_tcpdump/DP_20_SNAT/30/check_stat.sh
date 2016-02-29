log_file='
qvo00343359-11.log  qvo76fc9f4b-c4.log  qvoa3f18395-61.log  qvoe0d7ad1d-6f.log  qvoe8ed82e0-ee.log
qvo14d53f21-69.log  qvo978f8e29-b8.log  qvode58def9-e6.log  qvoe6163e5e-54.log  qvoed7aa38d-22.log
'
i=1
for file in $log_file;
do
        #echo $file
        tot=$(cat $file | grep "> 1.1.1.34" | wc -l)
        noff=$(cat $file | grep "> 1.1.1.34" | grep 1464 | wc -l)
        echo "VM$i $noff Non-Offloaded packets out of sample $tot = "
        let ' i = i + 1'
done

