var=`ip -o a l | egrep -iv "inet6|127.0.0.1" | grep bond`
if [ "$var" = "" ]; then echo bond non configurato; else ip -o a l | grep -v 'inet6'| grep bond; fi
