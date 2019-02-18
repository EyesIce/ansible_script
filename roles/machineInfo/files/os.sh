#!/bin/bash
if [ -a /etc/redhat-release ]
then
	cat /etc/redhat-release
else
	cat /etc/os-release | awk '/^PRETTY/'| awk -F'"' '{print $2}'
fi
