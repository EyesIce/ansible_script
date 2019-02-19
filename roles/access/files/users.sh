awk -F: '($3>=1000)' /etc/passwd | grep -v nobody
rm -f /tmp/users.sh
