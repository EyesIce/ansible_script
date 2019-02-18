#!/bin/bash
echo "df -h"
printf "%s\n"
df -h | egrep -v 'udev|sr0|none|boot|tmpfs|loop'
printf "%s\n----------%s\n"
echo "mounted fs"
printf "%s\n"
cat /etc/mtab | egrep -v 'loop|tmpfs|sys|proc|devpts|mqueue|hugetlbfs'
printf "%s\n----------%s\n"
echo "fstab"
printf "%s\n"
grep -v '#' /etc/fstab > /tmp/ris_fstab && awk 'NF' /tmp/ris_fstab; rm -f /tmp/ris_fstab
