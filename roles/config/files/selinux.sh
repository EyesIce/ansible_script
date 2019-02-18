if [ -a /etc/selinux/config ]; then getenforce; grep 'SELINUX=' /etc/selinux/config; else echo selinux non presente; fi
