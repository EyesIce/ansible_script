if [ `systemctl status NetworkManager | awk '/active/' | awk -F' ' '{print $2}'` = "active" ]; then echo NetworkManager abilitato; else echo NetworkManager disabilitato; fi
