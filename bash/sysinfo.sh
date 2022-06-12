#!bin/bash

echo -e "Hostname:\t"`hostname`
echo -e "DNS:\t"`hostname -d`
echo -e "IP:\t"`hostname -I`
echo -e "OS:\t"`head -n1 /etc/issue`
echo -e "DiskInfo:\t" `df -h --output=source,fstype,size,used,avail,pcent`



