#!/bin/bash
if ntpq -p; then ntpq -p; else echo ntpq non installato; fi
if [ -a /etc/ntp.conf ]
then
	grep server /etc/ntp.conf |grep -v '#'
else
	echo ntpq non installato
fi
ls -l /etc/localtime
rm -f /tmp/ntp.sh
