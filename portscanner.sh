#!/bin/bash

clear

echo "enter ip: "
read ip
pingcmd=$(ping -c 4  $ip)
echo "$pingcmd"

sleep 1
echo " "
echo "_________________________________________________________________ "

echo "STATING NMAP SCAN>>>>                                            |"
echo "__________________________________________________________________"
nmapcmd=$(nmap $ip)

echo " "
echo " "
echo "$nmapcmd" | grep -A 10 "port"


