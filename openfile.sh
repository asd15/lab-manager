#!/bin/bash
nmap -sP 192.168.53.0/24 | grep 192 | cut -d " " -f 5 | sed '4d' > activeips.txt

while read -u10 activeips;
do
	echo $activeips
	ssh admin1@$activeips xdg-open a.txt

done 10< activeips.txt
