#!/bin/bash
if [ -a /etc/redhat-release ]
then
	cat /etc/redhat-release
else
	if [ -a /etc/os-release ]
	then
		cat /etc/os-release | awk '/^PRETTY/'| awk -F'"' '{print $2}'
	else
		zypper ls |grep -i sle | tail -1 | awk -F'|' '{print $2}'	
fi
rm -f /tmp/os.sh
