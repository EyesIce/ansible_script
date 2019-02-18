for i in $(ip -o a l |egrep -v '1:|inet6'|awk -F' ' '{print $2}')
do 
	ethtool $i
	printf "%s\n"
	echo "--------------------"
	printf "%s\n"
done

