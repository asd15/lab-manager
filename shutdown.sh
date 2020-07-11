#!/bin/bash
nmap -sP 192.168.53.0/24 | grep 192 | cut -d " " -f 5 | sed '1d'| tr -d '( )' >
activeips.txt
while IFS= read line read activeips;
do
	echo $line
	ssh admin1@$line poweroff
done < activeips.txt
