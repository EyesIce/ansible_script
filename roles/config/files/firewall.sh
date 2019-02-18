#!/bin/bash
var_os=`cat /etc/os-release | awk '/^ID=/' | awk -F= '{print $2}'`
if [ "$var_os" = "ubuntu" ]
then
        systemctl status ufw
else
        systemctl status firewalld
fi
iptables -L
