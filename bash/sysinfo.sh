#!/bin/bash

echo -e "FQDN :\t"`hostname -f`

echo -e "Host Information:"
echo -e "" `hostnamectl | grep "Static hostname:"`
echo -e "" `hostnamectl | grep "Icon name"`
echo -e "" `hostnamectl | grep "Chassis:"`
echo -e "" `hostnamectl | grep "Machine ID:"`
echo -e "" `hostnamectl | grep "Boot ID:"`




echo -e "Operating System:\t"`hostnamectl | grep "Operating System" | cut -d ' ' -f5-`
echo -e "Kernel:\t\t\t"`uname -r`
echo -e "Architecture:\t\t"`arch`
echo -e "IP Adresses:\t\t"`hostname -I`
echo -e "Root FIlesystem Status:"
df -Ph | sed s/%//g | awk '{ if($5 > 80) print $0;}'
echo ""





