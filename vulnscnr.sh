#!/bin/bash

clear

echo " "
echo "__________________________ "
echo " VULNERABILITY SCANNER V.1"
echo "__________________________"
echo " "
echo " "
echo "AUTHOR : SOHAN ND"
echo "TOOL   : VULNERABILITY SCANNER"
echo "MODE   : KALI LINUX"

echo " "
echo " "
echo "Enter the IP adress: "
read ip

sleep 1.5
echo " "
echo "pinging..."
cmdping=$(ping -c 4 $ip)
echo "Done"

sleep 0.5
echo " "
echo "Scanning for vulnerabilities..."
echo " "
cmdnmap=$(nmap --script vuln $ip)

echo "$cmdnmap" | grep -A 7 "VULNERABLE"

echo "Done"










