var=`systemctl status telnet.socket | awk '/active/' | awk -F' ' '{print $2}'`
if [ "$var" = "active" ]; then echo telnet abilitato; else echo telnet disabilitato; fi
