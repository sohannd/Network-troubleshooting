#!/bin/bash

clear

if command -v toilet >/dev/null 2>&1 && command -v lolcat >/dev/null 2>&1; then
    toilet -f big -F border "Easy-Ping" | lolcat
else
    echo "=============================="
    echo "         Easy-Ping"
    echo "=============================="
fi

echo
echo "Author : SOHAN ND"
echo "Tool   : Network Scanner"
echo "Mode   : Kali Linux"
echo





sleep 1

echo " "
echo " "
echo "Enter an ip to PING: "
read ip

sleep 1
echo "scanning......."

cmdip=$(ping -c 5 $ip)
echo "$cmdip"

sleep 1
echo " "
echo " "
echo ".......SCAN COMPLETED......."


