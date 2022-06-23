#!bin/bash




echo -e "Report for "`hostname`

echo "================"

echo -e "DNS:\t"`hostname -d`
echo -e "IP Address: "`hostname -I`
echo -e "Operating system name and version: "`head -n1 /etc/issue`
echo -e "Root FIlesystem"
df -Ph | sed s/%//g | awk '{ if($5 > 80) print $0;}'
echo ""

echo "================"
